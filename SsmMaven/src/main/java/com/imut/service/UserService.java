package com.imut.service;

import com.imut.model.User;

public interface UserService {

	//添加用户
    Integer addUser(User user);
    
    //校验用户名
    Integer checkUname(String uname);
    
    //校验邮箱
    Integer checkEmail(String email);
    
    //激活用户
    Integer userActive(String email,String code);
    
    //根据用户名(或者邮箱)查询用户
    User getUserByNameOrEmail(User user);
}
