package com.imut.model;

public class Question {
    private Integer tid;

    private Integer qid;

    private String tname;

    private Integer type;

    private String option;

    public Question() {
		super();
	}

	public Question(Integer tid, Integer qid, String tname, Integer type, String option) {
		super();
		this.tid = tid;
		this.qid = qid;
		this.tname = tname;
		this.type = type;
		this.option = option;
	}

	@Override
	public String toString() {
		return "Question [tid=" + tid + ", qid=" + qid + ", tname=" + tname + ", type=" + type + ", option=" + option
				+ "]";
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
        this.option = option;
    }
}