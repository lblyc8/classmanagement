package com.lyc.classmanag.service;

import com.lyc.classmanag.entity.User;

public interface UserService {
    User findUser(String username,String password);

    String findRole(String UserId);

    String findPage(String Role);
}
