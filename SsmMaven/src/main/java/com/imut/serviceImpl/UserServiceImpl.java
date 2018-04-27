package com.imut.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.imut.dao.UserMapper;
import com.imut.model.User;
import com.imut.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Resource
	private UserMapper userMapper;
	
	@Override
	public Integer addUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.addUser(user);
	}

	@Override
	public Integer checkUname(String uname) {
		// TODO Auto-generated method stub
		return userMapper.checkUname(uname);
	}

	@Override
	public Integer checkEmail(String email) {
		// TODO Auto-generated method stub
		return userMapper.checkEmail(email);
	}

	@Override
	public Integer userActive(String email, String code) {
		Integer uid = userMapper.checkCode(email, code);
		if(uid == null){
			return 0;
		}else{
			userMapper.userActive(uid);
			return 1;
		}
	}

	@Override
	public User getUserByNameOrEmail(User user) {
		// TODO Auto-generated method stub
		return userMapper.getUserByNameOrEmail(user);
	}

}
