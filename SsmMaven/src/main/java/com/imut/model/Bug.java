package com.imut.model;

import java.util.Date;

public class Bug {
    private String id;

    private Date createdatatime;

    private String name;

    private String note;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Date getCreatedatatime() {
        return createdatatime;
    }

    public void setCreatedatatime(Date createdatatime) {
        this.createdatatime = createdatatime;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }
}