package com.imut.model;

import java.util.Date;
import java.util.List;

public class User {
	private List<UserRole> userrole;
	
    private String id;

    private Date createdatetime;

    private Date modifyfatetime;

    private String name;

    private String pwd;

    private Date createtime;

    private Date updatetime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Date getCreatedatetime() {
        return createdatetime;
    }

    public void setCreatedatetime(Date createdatetime) {
        this.createdatetime = createdatetime;
    }

    public Date getModifyfatetime() {
        return modifyfatetime;
    }

    public void setModifyfatetime(Date modifyfatetime) {
        this.modifyfatetime = modifyfatetime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

	public List<UserRole> getUserrole() {
		return userrole;
	}

	public void setUserrole(List<UserRole> userrole) {
		this.userrole = userrole;
	}
    
}