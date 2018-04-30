package com.imut.model;

import java.util.List;



public class Analysis {
	private String qid;
	private String tname;
	private String type;
	private List<Data> datas;
	
	public String getQid() {
		return qid;
	}
	public void setQid(String qid) {
		this.qid = qid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public List<Data> getDatas() {
		return datas;
	}
	public void setDatas(List<Data> datas) {
		this.datas = datas;
	}
	@Override
	public String toString() {
		return "Analysis [tname=" + tname + ", type=" + type + ", datas=" + datas + "]";
	}
	
}
