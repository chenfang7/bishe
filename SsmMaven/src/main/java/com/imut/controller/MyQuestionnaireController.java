package com.imut.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.imut.model.User;
import com.imut.service.MyQuestionnaireService;
import com.imut.serviceImpl.MyQuestionnaireServiceImpl;

@Controller
/*@RequestMapping("/myquestionnaire")*/
public class MyQuestionnaireController {

	@Autowired 
	private HttpServletRequest request;
	@Autowired
	private MyQuestionnaireService mqs;
	
	/**
	 * 通过登录的id来查询自己的问卷
	 * @return
	 */
	@RequestMapping(value = "/list")
	public ModelAndView getMyQuestionnaireList(String id){
		/*HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");*/
		User userById = mqs.getUserById(id);
		/*session.setAttribute("user", userById);*/
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("qlist",userById.getQlist());
		mav.setViewName("myquestionnairelist");
		return mav;
	}

}
