package com.imut.model;

import java.util.Arrays;
import java.util.List;

import net.sf.json.JSONArray;

public class Question {
	private Integer tid;

	private Integer qid;

	private String tname;

	private Integer type;

	private String option;

	private String[] optionstr;

	private List<Answers> answers ;
	public Question() {
		super();
	}

	public Question(Integer tid, Integer qid, String tname, Integer type) {
		super();
		this.tid = tid;
		this.qid = qid;
		this.tname = tname;
		this.type = type;

	}





	@Override
	public String toString() {
		return "Question [tid=" + tid + ", qid=" + qid + ", tname=" + tname + ", type=" + type + ", option=" + option
				+ ", optionstr=" + Arrays.toString(optionstr) + "]";
	}

	public List<Answers> getAnswers() {
		return answers;
	}

	public void setAnswers(List<Answers> answers) {
		this.answers = answers;
	}

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Integer getQid() {
		return qid;
	}

	public void setQid(Integer qid) {
		this.qid = qid;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname == null ? null : tname.trim();
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		System.out.println(option);
		this.option = option;
		JSONArray fromObject = JSONArray.fromObject(option);
		String[] s=new String[fromObject.size()];
		for (int i = 0; i < fromObject.size(); i++) {
			s[i]=fromObject.getString(i);
		}
		optionstr=s;
	}

	public String[] getOptionstr() {
		return optionstr;
	}

	public void setOptionstr(String[] optionstr) {
		this.optionstr = optionstr;
		JSONArray fromObject = JSONArray.fromObject(optionstr);
		option=fromObject.toString();
	}



}