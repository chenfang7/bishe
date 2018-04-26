package com.imut.model;

import java.util.Date;
import java.util.List;

public class User {
    private Integer uid;

    private String uname;

    private String upassword;

    private Integer sex;

    private String phone;

    private String head;

    private String qq;
    
    private String address;
    
    private Integer status;
    
    private Date createTime;
    
    private String checkCode;
    
    private String email;
    
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
    
    @Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", sex=" + sex + ", phone="
				+ phone + ", head=" + head + ", qq=" + qq + ", qlist=" + qlist + "]";
	}

	public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }
	
    public String getPhone() {
		return phone;
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

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
    
    
}