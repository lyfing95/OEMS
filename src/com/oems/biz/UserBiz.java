package com.oems.biz;

import java.util.List;

import com.oems.entity.User;

public interface UserBiz {
	
	int delUser(String userId);
	List<User> allUser();
}
