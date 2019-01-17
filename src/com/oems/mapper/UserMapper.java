package com.oems.mapper;

import java.util.List;

import com.oems.entity.User;

public interface UserMapper {
	List<User> selectAllUser();
    int deleteByPrimaryKey(String userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}