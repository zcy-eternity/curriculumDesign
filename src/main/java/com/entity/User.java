package com.entity;

import java.util.Date;

public class User {
    private int id;
    private String name;
    private String password;
    private Date insertTime;
    public User(String name,String password){
        this.name = name;
        this.password = password;
    }

    public User(int id, String name,String password ) {
        this.id = id;
        this.name = name;
        this.password = password;
    }

    public User(int id, String name, Date insertTime) {
        this.id = id;
        this.name = name;
        this.insertTime = insertTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
}
