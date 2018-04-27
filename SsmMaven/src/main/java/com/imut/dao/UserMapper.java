package com.imut.dao;


import com.imut.model.User;

public interface UserMapper {


    User selectByPrimaryKey(String id);

    //添加用户
    Integer addUser(User user);
    
    //校验用户名
    Integer checkUname(String uname);
    
    //校验邮箱
    Integer checkEmail(String email);
    
    //校验邮箱和激活码
    Integer checkCode(String email,String code);
    
    //激活用户，修改用户状态为1
    Integer userActive(Integer uid);
    
    //根据用户名或邮箱校验密码是否正确
    User getUserByNameOrEmail(User user);
}