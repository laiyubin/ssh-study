package com.lai.services;

import com.lai.dao.UserDao;
import com.lai.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * User: wlai
 * Date: 10/16/13
 * Time: 8:16 PM
 */
@Service
@Transactional
public class SecureService {
    @Autowired
    private UserDao userDao;

    @Transactional(readOnly = true)
    public List<User> findAllUser () {
        return userDao.findAll();
    }

    public boolean saveUser (User user) {
        return userDao.save(user);
    }


}
