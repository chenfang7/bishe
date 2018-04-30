package com.imut.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.imut.model.Answers;
import com.imut.model.Questionnaire;
import com.imut.model.User;
import com.imut.service.MyQuestionnaireService;
import com.imut.serviceImpl.MyQuestionnaireServiceImpl;

@Controller
/* @RequestMapping("/myquestionnaire") */
public class MyQuestionnaireController {
	@Autowired
	private MyQuestionnaireService mqs;

	/**
	 * 通过登录的id来查询自己的问卷 从而查看自己问卷的列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/list")
	public ModelAndView getMyQuestionnaireList(HttpServletRequest request) {
		/*
		 * HttpSession session = request.getSession(); User user =
		 * (User)session.getAttribute("user");
		 */
		
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user.toString());
		User userAndQlist = mqs.getUserById(user.getUid()+"");
		ModelAndView mav = new ModelAndView();
		if (userAndQlist != null) {
			mav.addObject("qlist", userAndQlist.getQlist());
		} else {
			mav.addObject("qlist", null);
		}

		mav.setViewName("myquestionnairelist");
		return mav;
	}

	/**
	 * 搜索自己的问卷
	 * 
	 * @param id
	 * @param wd
	 * @return
	 */
	@RequestMapping(value = "/searchlist")
	public ModelAndView searchQuestionnaire(@RequestParam(value = "wd") String wd, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mav = new ModelAndView();

		mav.addObject("qlist", mqs.getQlistBySearch(user.getUid() + "", wd));
		mav.setViewName("myquestionnairelist");
		return mav;
	}

	/**
	 * 删除问卷
	 * @param qid
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/deletequestionnaire")
	public String deleteQuestionnaire(@RequestParam(value = "qid") String qid, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		int sum = mqs.deleteQuestionnaire(qid, user.getUid() + "");
		return "redirect:list?id=" + user.getUid();
	}

	/**
	 * 打开垃圾桶
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/recyclebin")
	public ModelAndView recyclebin(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mav = new ModelAndView();

		mav.addObject("qlist", mqs.getRecyclebin(user.getUid() + ""));
		mav.setViewName("myquestionnairelist");
		return mav;
	}
	
	/**
	 * 复制问卷
	 * @param qid
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/copyQuestionnaire")
	public String copyQuestionnaire(String qid, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		Questionnaire questionnaire = mqs.getQuestionnaireByid(qid);

		mqs.copyQuestionnaire(questionnaire);
		return "redirect:list?id=" + user.getUid();
	}
	/**
	 *  创建问卷
	 * @param name
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/create")
	public ModelAndView createquestionnaire(String name, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		Questionnaire q =new Questionnaire();
		q.setQname(name);
		q.setQuid(user.getUid());
		int createquestionnaire = mqs.createquestionnaire(q);
		ModelAndView mav = new ModelAndView();
		mav.addObject("qqq",q );
		mav.setViewName("editquestionnaire");
		return mav;
	}
	
	/**
	 * 更新问卷
	 * @param questionnaire
	 * @return
	 */
	@RequestMapping(value = "/updatequestionnaire")
	@ResponseBody
	public  Map<String, String> updatequestionnaire(@RequestBody Questionnaire questionnaire){
		Map<String, String> message = new HashMap<>();
		mqs.updatequestionnaire(questionnaire);
		message.put("code", "登陆成功！");
		return message;
	}
	
	@RequestMapping(value = "/createqqq")
	public String createqqq(){
		return "createquestionnaire";
	}
	//编辑问卷
	@RequestMapping(value = "/editqe")
	public ModelAndView editquestionnaire(String qid){
		Questionnaire questionnaire=mqs.editquestionnaire(qid);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("qqq",questionnaire);
		mav.setViewName("editquestionnaire");
		return mav;
	}
	/**
	 * 二维码和链接
	 * @param qid
	 * @return
	 */
	@RequestMapping(value = "/getqrandurl")
	public ModelAndView getqrandurl(String qid){
		ModelAndView mav = new ModelAndView();
		mav.addObject("qid",qid);
		mav.setViewName("qrandurl");
		return mav;
	}
	//questionnaire
	@RequestMapping(value = "/questionnaire")
	public ModelAndView questionnaire(String qid){
		Questionnaire questionnaire=mqs.editquestionnaire(qid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("qqq",questionnaire);
		mav.setViewName("questionnaire");
		return mav;
	}
	//提交问卷
	@RequestMapping(value = "/addanswers")
	@ResponseBody
	public Map<String, String> addanswers(@RequestBody List<Answers> list){
		Map<String, String> message = new HashMap<>();
		mqs.addanswers(list);

		message.put("code", "提交成功！");
		return message;
	}
}
