package com.lai.dao;

import com.lai.entities.Role;
import com.lai.entities.User;
import com.lai.utils.Page;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;


@Repository
public class RoleDao extends GenericDao<Role,Integer>{

    public Page<Role> findByPage(Page<Role> page) {
        List filters = new ArrayList();
        filters.add(Restrictions.eq("disabled", false));
        return this.findByPage(page, filters, null);
    }

}
