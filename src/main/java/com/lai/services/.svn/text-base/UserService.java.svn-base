package com.lai.services;

import com.lai.dao.GenericDao;
import com.lai.dao.UserDao;
import com.lai.entities.User;
import com.lai.utils.Page;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * User: wlai
 * Date: 11/9/13
 * Time: 1:10 PM
 */
@Service
@Transactional
public class UserService extends BaseService<User, Integer> {
    @Autowired
    private UserDao userDao;

    @Override
    public GenericDao getDao() {
        return userDao;
    }

    public Page<User> findByPage(Page<User> page) {
        return userDao.findByPage(page);
    }
}
