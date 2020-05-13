package com.lyc.classmanag.service;

import com.lyc.classmanag.entity.User;

import java.util.Set;

public interface UserService {
    User findUserById(String UserId);

    Set<String> findRole(String UserId);

    Set<String> findPermission(Set<String> Role);

    String findPage(String Role);
}
