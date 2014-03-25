package com.lai.services;

import com.lai.dao.GenericDao;
import com.lai.dao.ModuleDao;
import com.lai.dao.RoleDao;
import com.lai.entities.Module;
import com.lai.entities.Role;
import com.lai.entities.User;
import com.lai.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * User: wlai
 * Date: 11/9/13
 * Time: 1:10 PM
 */
@Service
@Transactional
public class ModuleService extends BaseService<Module, Integer> {
    @Autowired
    private ModuleDao dao;

    @Override
    public GenericDao getDao() {
        return dao;
    }

    public Page<Module> findByPage(Page<Module> page) {
        return dao.findByPage(page);
    }
}
