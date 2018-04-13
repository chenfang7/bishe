package com.imut.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imut.dao.UserMapper;
import com.imut.model.User;
import com.imut.service.MyQuestionnaireService;
@Service
public class MyQuestionnaireServiceImpl implements MyQuestionnaireService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User getUserById(String id) {
		User selectByPrimaryKey = userMapper.selectByPrimaryKey(id);
		return selectByPrimaryKey;
	}

}
