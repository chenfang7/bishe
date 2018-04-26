package com.imut.service;

import com.imut.model.User;

public interface UserService {

	//添加用户
    Integer addUser(User user);
    
    //校验用户名
    Integer checkUname(String uname);
    
    //校验邮箱
    Integer checkEmail(String email);
    
    //校验用户
    Integer userActive(String email,String code);
}
