package com.tat.zhifzgl.user.mapper;

import com.tat.zhifzgl.user.pojo.User;

import java.util.List;

/**
 * Created by caowe on 2017-02-14.
 */
public interface UserMapper {
    List<User> selectUsers();
}
