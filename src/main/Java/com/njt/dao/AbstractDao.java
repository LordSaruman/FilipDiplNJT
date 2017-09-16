package com.njt.dao;

import com.njt.model.User;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

public abstract class AbstractDao<PK extends Serializable, T> {
    private final Class<T> persistentClass;

    @SuppressWarnings("unchecked")
    public AbstractDao() {
        this.persistentClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass())
                .getActualTypeArguments()[1];
    }

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public T getByKey(PK key) {
        return (T) getSession().get(persistentClass, key);
    }

    public T findById(PK id) {
        return getByKey(id);
    }

    @SuppressWarnings("unchecked")
    public List<T> findAll(){
        Criteria criteria = createEntityCriteria();

        return (List<T>) criteria.list();
    }

    public void persist(T entity) {
        getSession().persist(entity);
    }

    public void update(T entity) {
        getSession().update(entity);
    }

    public void delete(T entity) {
        getSession().delete(entity);
    }

    @SuppressWarnings("deprecation")
    protected Criteria createEntityCriteria() {
        return getSession().createCriteria(persistentClass);
    }

}
