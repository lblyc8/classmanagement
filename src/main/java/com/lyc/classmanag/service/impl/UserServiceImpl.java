package com.lyc.classmanag.service.impl;

import com.lyc.classmanag.dao.UserDao;
import com.lyc.classmanag.entity.User;
import com.lyc.classmanag.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Set;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User findUserById(String UserId) {
        User user = this.userDao.findUserById(UserId);
        return user;
    }

    @Override
    public String findPage(String Role) {
        return userDao.findPage(Role);
    }

    @Override
    public Set<String> findRole(String UserId) {
        return userDao.findRole(UserId);
    }

    @Override
    public Set<String> findPermission(Set<String> Role) {
        return userDao.findPermission(Role);
    }
}
