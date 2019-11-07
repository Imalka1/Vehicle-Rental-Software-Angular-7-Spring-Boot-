package com.vrs.dao;

import com.vrs.entity.Customer;
import com.vrs.entity.Passenger;
import com.vrs.hibernate.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

    public Customer getCustomerViaEmail(String email) {
        Session session = sessionFactory.openSession();
        try {
            session.getTransaction().begin();
            List customers = session.createQuery("from Customer where customerEmail=?1")
                    .setParameter(1, email)
                    .list();
            session.getTransaction().commit();
            if (customers.size() > 0) {
                return (Customer) customers.get(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return null;
    }
}