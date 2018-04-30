package com.imut.controller;



import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.imut.model.User;
import com.imut.service.UserService;
import com.imut.util.AppMD5Util;
import com.imut.util.SendMail;

@RequestMapping("user")
@Controller
public class UserController {
	@Resource
	private UserService userService;
	
	/**
	 * 检查用户名是否重复
	 * @author zp
	 * @param uname
	 * @return 0:该用户名不存在，可以使用
	 * @return 1:该用户名已存在，不可使用
	 */
	@ResponseBody
	@RequestMapping("checkUname")
	public Integer checkUname(String uname){
		return userService.checkUname(uname) == null?0:1;
	}
	
	/**
	 * 检查邮箱是否重复
	 * @author zp
	 * @param email
	 * @return 0:该邮箱不存在，可以使用
	 * @return 1:该邮箱已存在，不可使用
	 */
	@ResponseBody
	@RequestMapping("checkEmail")
	public Integer checkEmail(String email){
		return userService.checkEmail(email) == null?0:1;
	}
	
	/**
	 * 用户注册
	 * @author peng
	 * @param User
	 * @return 0:用户添加失败
	 * @return 1:用户添加成功
	 * @throws Exception 
	 */
	@RequestMapping(value="register",method=RequestMethod.POST)
	public ModelAndView addUser(User user) throws Exception{
		ModelAndView mav = new ModelAndView();
		//生成激活码，32位uuid
		String code = UUID.randomUUID().toString().replace("-", "");
		//设置用户状态:0未激活，1已激活
		user.setStatus(0);
		//设置用户创建时间
		user.setCreateTime(new Date());
		//设置激活码
		user.setCheckCode(code);
		
		user.setUpassword(AppMD5Util.getMD5(user.getUpassword()));
		
		Integer result = userService.addUser(user) == null?0:1;
		if(result == 1){
			//发送激活邮件
			SendMail.send(user.getEmail(),user.getEmail(), code);
			mav.addObject("result", 1);
			mav.setViewName("registerresult");
			return mav;
		}else{
			mav.addObject("result", 0);
			mav.setViewName("registerresult");
			return mav;
		}
		
	}
	
	/**
	 * 激活账号
	 * @author zp
	 * @param email,code
	 * @return 0:邮箱，激活码校验不通过，激活失败
	 * 		   1:激活成功;
	 */
	@ResponseBody
	@RequestMapping("active")
	public ModelAndView active(@RequestParam String email,@RequestParam String code){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("activeresult");
		if(userService.userActive(email, code) == 0){
			mav.addObject("result","激活失败，请联系网站管理员");
		}else{
			mav.addObject("result","激活成功，请登录");
		}
		return mav;
	}
	
	/**
	 * 登录校验
	 * @author zp
	 * @param uname & email,password
	 * @return 0：登陆成功
	 * 			1：未激活
	 * 			2：用户名或密码错误
	 */
	@ResponseBody
	@RequestMapping(value="login")
	public Integer login(@RequestParam String name,@RequestParam String password,HttpServletRequest request){
		User user = new User();
		if(name.contains("@")){
			user.setEmail(name);
		}else{
			user.setUname(name);
		}
		User userInf = userService.getUserByNameOrEmail(user);
		System.out.println(userInf.toString());
		if(userInf != null){
			if(userInf.getStatus() == 0){
				return 1;
			}else{

				if(userInf.getUpassword().equals(AppMD5Util.getMD5(password))){
					request.getSession().setAttribute("user", userInf);
					return 0;
				}else{
					return 2;
				}
			}
		}else{
			return 2;
		}
	}
}
