package br.com.dao;

import java.util.List;

import javax.persistence.EntityManager;

import br.com.connectionfactory.ConnectionFactory;
import br.com.dao.Students;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

public class Students {

    public Students save(Students students) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            if (students.getId() == null) {
                em.persist(students);
            } else {
                em.merge(students);
            }
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return students;
    }

    public Students update(Students students) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            em.merge(students);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return students;
    }

    public Students findById(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Students students = null;
        try {
            students = em.find(Students.class, id);
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return students;
    }

    public List<Students> findAll() {
        EntityManager em = ConnectionFactory.getConnection();
        List<Students> students = null;

        try {
            students = em.createQuery("from Students").getResultList();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return students;
    }

    public Students remove(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Students students = null;
        try {
            students = em.find(Students.class, id);
            em.getTransaction().begin();
            em.remove(students);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return students;
    }

    public List<Students> findByName(String findByName) {
        EntityManager em = ConnectionFactory.getConnection();

        Session session = (Session) em.getDelegate();
        Criteria criteria = session.createCriteria(Students.class);
        Criterion c1 = Restrictions.ilike("name", findByName, MatchMode.ANYWHERE);
        criteria.add(c1);
        List<Students> students = criteria.list();
        em.close();
        return students;
    }

    private Object getId() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
