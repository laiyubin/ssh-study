package com.lai.dao;

import com.lai.entities.User;
import com.lai.utils.Page;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


@Repository
public class UserDao extends GenericDao
        <User, Integer> {


    public Page<User> findByPage(Page<User> page) {
        List filters = new ArrayList();
        filters.add(Restrictions.eq("disabled", false));
        return this.findByPage(page, filters, null);
    }


}
