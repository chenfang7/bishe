package com.imut.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.imut.model.Question;

public interface AnalysisMapper {
	//获取问题以及问题的所有答案
	public List<Question> getQuestionsAndAnswers(@Param("qid")String qid);
}
