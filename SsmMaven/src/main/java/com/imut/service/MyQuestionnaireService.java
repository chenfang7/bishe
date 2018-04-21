package com.imut.service;

import java.util.List;

import com.imut.model.Questionnaire;
import com.imut.model.User;

public interface MyQuestionnaireService {
	public User getUserById(String id);

	public List<Questionnaire> getQlistBySearch(String id,String wd);

	public int deleteQuestionnaire(String qid, String id);

	public List<Questionnaire> getRecyclebin(String id);

	

	public void copyQuestionnaire(Questionnaire qnaire);

	public Questionnaire getQuestionnaireByid(String qid);

	public int createquestionnaire(Questionnaire q);

	public void updatequestionnaire(Questionnaire questionnaire);

	public Questionnaire editquestionnaire(String qid);
}
