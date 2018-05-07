package com.imut.controller;

import java.util.List;
import java.io.File;  
import java.io.IOException;  
  
import org.apache.commons.io.FileUtils;  
import org.springframework.context.annotation.Scope;  
import org.springframework.http.HttpHeaders;  
import org.springframework.http.HttpStatus;  
import org.springframework.http.MediaType;  
import org.springframework.http.ResponseEntity;  
import org.springframework.stereotype.Component;  
import org.springframework.web.bind.annotation.RequestMapping;  

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.imut.model.Analysis;
import com.imut.service.AnalysisService;

@Controller
public class AnalysisController {
	@Autowired
	private AnalysisService analysisService;
	/**
	 * 这个是返回到分析页面
	 * @param qid
	 * @return
	 */
	@RequestMapping(value = "/goanalysis")
	public ModelAndView getQuestionsAndAnswers(String qid) {
		List<Analysis> questionsAndAnswers = analysisService.getQuestionsAndAnswers(qid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("qaa",questionsAndAnswers);
		mav.setViewName("analysis");
		return mav;
	}
	
	/**
	 * 下载分析结果
	 * @param qid
	 * @return
	 * @throws IOException
	 */
    @RequestMapping(value = "/download")    
    public ResponseEntity<byte[]> download(String qid) throws IOException {    
		
		analysisService.download(qid);
		String path = "d:\\" + qid + ".doc";
		File file = new File(path);
		HttpHeaders headers = new HttpHeaders();
		String fileName = new String("问卷调查结果.doc".getBytes("UTF-8"), "iso-8859-1");// 为了解决中文名称乱码问题
		headers.setContentDispositionFormData("attachment", fileName);
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
    }    
}
