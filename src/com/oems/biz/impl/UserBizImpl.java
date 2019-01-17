package com.oems.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oems.biz.UserBiz;
import com.oems.entity.User;
import com.oems.mapper.UserMapper;
@Service
public class UserBizImpl implements UserBiz{
@Autowired
private UserMapper userMapper; 
	@Override
	public List<User> allUser() {
		// TODO Auto-generated method stub
		return userMapper.selectAllUser();
	}
	@Override
	public int delUser(String userId) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(userId);
	}

}
