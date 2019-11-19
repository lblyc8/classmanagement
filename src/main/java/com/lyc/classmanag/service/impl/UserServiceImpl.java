package com.lyc.classmanag.service.impl;

import com.lyc.classmanag.dao.UserDao;
import com.lyc.classmanag.entity.User;
import com.lyc.classmanag.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User findUser(String username, String password) {
        User user = this.userDao.findUser(username, password);
        return user;
    }
}
