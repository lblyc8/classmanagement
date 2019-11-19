package com.lyc.classmanag.dao;

import com.lyc.classmanag.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User findUser(@Param("username") String username,
                  @Param("password") String password);
}
