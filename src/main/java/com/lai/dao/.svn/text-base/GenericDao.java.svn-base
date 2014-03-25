package com.lai.dao;

import com.lai.entities.User;
import com.lai.utils.Page;
import org.apache.commons.logging.Log;
import org.apache.log4j.spi.LoggerFactory;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;

/**
 * User: wlai
 * Date: 9/3/13
 * Time: 8:15 PM
 */
public class GenericDao<T, ID extends Serializable> {
    @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    private static final org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(GenericDao.class);

    protected Class<T> persistentClass;

    public GenericDao() {
        try {
            ParameterizedType type = (ParameterizedType) getClass().getGenericSuperclass();
            persistentClass = (Class<T>) type.getActualTypeArguments()[0];//
        } catch (Exception e) {
            logger.debug("Persistent class will be initialized manually by user");
        }
    }

    public boolean save(T t) {
        Session session = sessionFactory.getCurrentSession();
        session.save(t);
        return true;
    }

    public boolean update(T t) {
        Session session = sessionFactory.getCurrentSession();
        session.update(t);
        return true;
    }

    public T find(ID id) {
        Session session = sessionFactory.getCurrentSession();
        return (T) session.get(persistentClass, id);
    }

    public List<T> findAll() {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(persistentClass);
        return criteria.list();
    }

    public long countAll() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select count(*) from " + persistentClass.getName());
        return (Long) query.uniqueResult();
    }

    public Page<T> findByPage(Page<T> page, List<Criterion> filters, List<Order> orders) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(persistentClass);
        if (filters != null) {
            for (Criterion f : filters) {
                criteria.add(f);
            }
        }
        if (orders != null) {
            for (Order order : orders) {
                criteria.addOrder(order);
            }
        }
        criteria.setMaxResults(page.getPageSize()).setFirstResult(page.getCurrent());
        List<T> result = criteria.list();
        page.setResult(result);
        page.setAllCount(countAll());
        return page;
    }


    public Set<T> findByIds(int...ids){
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(persistentClass);
        Set<T> datas=new HashSet<T>();
        for(int id: ids){
            T t=(T)session.get(persistentClass,id);
            datas.add(t);
        }
        return datas;
    }

}
