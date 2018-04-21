package com.imut.test;




import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.imut.dao.QuestionnaireMapper;
import com.imut.model.Question;
import com.imut.model.User;
import com.imut.service.MyQuestionnaireService;

import net.sf.json.JSONArray;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mybatis.xml" })
public class MyBatisTest {
	private static Logger logger = Logger.getLogger(MyBatisTest.class); 

	@Autowired
	private MyQuestionnaireService mqs;
	@Autowired
	private QuestionnaireMapper questionnaireMapper;
	/*@Test
	public void getUserById(){
		User user = q.getUserById("1");
		System.out.println(user.toString());
	}*/
	
	@Test
	public void test(){
		List<Question> list =new ArrayList<Question>();

		questionnaireMapper.copyQuestion(list);
	
	}
	/*@Test
	public void test2(){
		List<User> list = userService.getAllUser();
		logger.info(JSON.toJSONStringWithDateFormat(list, "yyyy-MM-dd HH:mm:ss"));
	}
	
	@Test
	public void getAll(){
		List<User> list = userService.getAll();
		logger.info(JSON.toJSONStringWithDateFormat(list, "yyyy-MM-dd HH:mm:ss"));
	}
	
	@Test
	public void getAll3(){
		List<User> list = userService.getAll3();
		logger.info(JSON.toJSONStringWithDateFormat(list, "yyyy-MM-dd HH:mm:ss"));
	}*/
}
