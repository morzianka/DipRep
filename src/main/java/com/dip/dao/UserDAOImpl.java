package com.dip.dao;

import com.dip.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.Collection;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {
    @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void saveUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(user);
    }

    @Override
    public User getUser(String login) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(User.class, login);
    }

    @Override
    public Collection<User> getFriends(User user) {
        return user.getFriends();
    }

    @Override
    public Collection<User> getSimilarUsers(String languageToLearn) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createSQLQuery("select * from user where native_language like :languageToLearn");
        query.setParameter("languageToLearn", languageToLearn);
        query.executeUpdate();
        return query.getResultList();
    }
}
