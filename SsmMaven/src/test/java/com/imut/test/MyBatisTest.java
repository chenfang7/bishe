package com.imut.test;




import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.imut.model.User;
import com.imut.service.IUserService;
import com.imut.service.MyQuestionnaireService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mybatis.xml" })
public class MyBatisTest {
	private static Logger logger = Logger.getLogger(MyBatisTest.class); 
	@Autowired
	private MyQuestionnaireService q;
	

	@Test
	public void getUserById(){
		User user = q.getUserById("1");
		System.out.println(user.toString());
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
