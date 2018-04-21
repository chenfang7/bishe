package com.imut.model;

import java.util.Date;
import java.util.List;

public class Questionnaire {
    private Integer qid;

    private String qname;

    private Integer quid;

    private Date qstartdate;

    private Date qenddate;

    private Integer status;

    private Integer sum;

    private Integer release;

    private List<Question> questions;
    
    private String info;
    
    
    @Override
	public String toString() {
		return "Questionnaire [qid=" + qid + ", qname=" + qname + ", quid=" + quid + ", qstartdate=" + qstartdate
				+ ", qenddate=" + qenddate + ", status=" + status + ", sum=" + sum + ", release=" + release
				+ ", questions=" + questions + ", info=" + info + "]";
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public List<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}

	public Integer getQid() {
        return qid;
    }

    public void setQid(Integer qid) {
        this.qid = qid;
    }

    public String getQname() {
        return qname;
    }

    public void setQname(String qname) {
        this.qname = qname == null ? null : qname.trim();
    }

    public Integer getQuid() {
        return quid;
    }

    public void setQuid(Integer quid) {
        this.quid = quid;
    }

    public Date getQstartdate() {
        return qstartdate;
    }

    public void setQstartdate(Date qstartdate) {
        this.qstartdate = qstartdate;
    }

    public Date getQenddate() {
        return qenddate;
    }

    public void setQenddate(Date qenddate) {
        this.qenddate = qenddate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getSum() {
        return sum;
    }

    public void setSum(Integer sum) {
        this.sum = sum;
    }

    public Integer getRelease() {
        return release;
    }

    public void setRelease(Integer release) {
        this.release = release;
    }
}