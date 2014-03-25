package com.lai.dao;

import com.lai.entities.Right;
import com.lai.entities.User;
import com.lai.utils.Page;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * User: wlai
 * Date: 10/16/13
 * Time: 8:16 PM
 */

@Repository
public class RightDao extends GenericDao<Right,Integer> {
    public Page<Right> findByPage(Page<Right> page) {
        List filters = new ArrayList();
        filters.add(Restrictions.eq("disabled", false));
        return this.findByPage(page, filters, null);
    }
}
