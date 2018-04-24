package com.imut.model;

import java.util.Date;

import net.sf.json.JSONArray;

public class Answers {
    private Integer aid;

    private String randomuserid;

    private Integer qid;

    private String aresult;

    private String[] aresultarray;
    
    private Date date;

    private Integer tid;

    
    
    public String[] getAresultarray() {
		return aresultarray;
	}

	public void setAresultarray(String[] aresultarray) {
		this.aresultarray = aresultarray;
		aresult=JSONArray.fromObject(aresultarray).toString();
	}

	public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getRandomuserid() {
        return randomuserid;
    }

    public void setRandomuserid(String randomuserid) {
        this.randomuserid = randomuserid == null ? null : randomuserid.trim();
    }

    public Integer getQid() {
        return qid;
    }

    public void setQid(Integer qid) {
        this.qid = qid;
    }

    public String getAresult() {
        return aresult;
    }

    public void setAresult(String aresult) {
        this.aresult = aresult == null ? null : aresult.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }
}