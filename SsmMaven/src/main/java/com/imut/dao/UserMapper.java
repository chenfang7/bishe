package com.imut.dao;

import java.util.List;

import com.imut.model.User;

public interface UserMapper {


    User selectByPrimaryKey(String id);


}