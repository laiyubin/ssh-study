package com.lai.services;


import com.lai.dao.GenericDao;
import com.lai.utils.Page;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

public abstract class BaseService<T, ID extends Serializable> {

    public abstract GenericDao getDao();

    public boolean save(T t) {
        return getDao().save(t);
    }

    public boolean update(T t) {
        return getDao().update(t);
    }

    public T find(ID id) {
        return (T) getDao().find(id);
    }

    public List<T> findAll() {
        return getDao().findAll();
    }
    public long countAll(){
        return getDao().countAll();
    }
    public Set<T> findByIds(int...ids){
        return getDao().findByIds(ids);
    }

    public Page<T> findByPage(Page<T> page,List filters,List orders){
        return getDao().findByPage(page,filters,orders);
    }
}
