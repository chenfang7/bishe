package com.imut.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.imut.model.Question;
import com.imut.model.Questionnaire;

public interface QuestionnaireMapper {

	List<Questionnaire> getQlistBySearch(@Param("id")String id, @Param("wd")String wd);

	int deleteQuestionnaire(@Param("qid")String qid, @Param("id")String id);

	List<Questionnaire> getRecyclebin(@Param("id")String id);

	int copyQuestionnaire(Questionnaire qnaire);

	Questionnaire getQuestionnaireByid(@Param("qid")String qid);

	List<Question> getQuestions(@Param("qid")Integer qid);

	void copyQuestion(List<Question> questions);

}
