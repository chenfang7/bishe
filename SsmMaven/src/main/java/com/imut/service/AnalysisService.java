package com.imut.service;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.imut.model.Analysis;
import com.imut.model.Question;

public interface AnalysisService {
	public List<Analysis> getQuestionsAndAnswers(String qid);

	public void download(String qid) throws IOException ;
}
