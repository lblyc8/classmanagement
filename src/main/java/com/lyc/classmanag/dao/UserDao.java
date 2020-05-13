package com.lyc.classmanag.dao;

import com.lyc.classmanag.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.Set;

public interface UserDao {
    User findUserById(@Param("UserId") String UserId);

    Set<String> findRole(@Param("UserId") String UserId);

    Set<String> findPermission(@Param("Role") Set<String> Role);

    String findPage(@Param("Role") String Role);
}
