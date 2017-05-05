package com.imut.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.imut.dao.UserMapper;
import com.imut.model.User;
import com.imut.service.IUserService;


@Service("userService")
public class UserServiceImpl implements IUserService {
	private UserMapper userMapper;
	
	public UserMapper getUserMapper() {
		return userMapper;
	}
	@Autowired
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	@Override
	public User getUserById(String id) {
		User user = userMapper.selectByPrimaryKey(id);
		return user;
	}

}
