package com.imut.test;




import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.log4j.Logger;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.imut.service.AnalysisService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mybatis.xml" })
public class MyBatisTest {
	private static Logger logger = Logger.getLogger(MyBatisTest.class); 
	/*@Autowired
	private MyQuestionnaireService mqs;*/
	@Autowired
	private AnalysisService analysisService;
	/*
	@Autowired
	private QuestionnaireMapper questionnaireMapper;
	*/
	/*@Autowired
	private AnalysisMapper analysisMapper;*/
	/**/
	/*@Test
	public void getUserById(){
		User user = q.getUserById("1");
		System.out.println(user.toString());
	}*/
	
	@Test
	public void test() throws IOException{
		
		/*Connection con = Jsoup.connect("http://127.0.0.1:8080/goanalysis?qid=45");
		Document document = con.get();
		Elements select = document.select("[href=css/amazeui.min.css]").remove();

		InputStream is = new ByteArrayInputStream(document.html().getBytes("UTF-8"));  
		OutputStream os = new FileOutputStream("f:\\111.doc");  
		POIFSFileSystem fs = new POIFSFileSystem();  
	    //对应于org.apache.poi.hdf.extractor.WordDocument  
	    fs.createDocument(is, "WordDocument");  
	    fs.writeFilesystem(os);  
	    os.close();  
	    is.close();  */
	    
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
