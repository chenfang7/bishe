package com.imut.model;

import java.util.List;

public class User {
    private Integer uid;

    private String uname;

    private String upassword;

    private Integer sex;

    private String phone;

    private String head;

    private String qq;
    
    private List<Questionnaire> qlist;

    public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(Integer uid, String uname, String upassword, Integer sex, String phone, String head, String qq) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upassword = upassword;
		this.sex = sex;
		this.phone = phone;
		this.head = head;
		this.qq = qq;
	}

	public List<Questionnaire> getQlist() {
		return qlist;
	}

	public void setQlist(List<Questionnaire> qlist) {
		this.qlist = qlist;
	}

	public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword == null ? null : upassword.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    @Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", sex=" + sex + ", phone="
				+ phone + ", head=" + head + ", qq=" + qq + ", qlist=" + qlist + "]"+qlist.get(0).toString();
	}

	public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head == null ? null : head.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }
}