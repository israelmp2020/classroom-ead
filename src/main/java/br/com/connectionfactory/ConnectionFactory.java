package br.com.connectionfactory;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ConnectionFactory {

    private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("classrom-ead");

    private ConnectionFactory() {
    }

    public static EntityManager getConnection() {
        return emf.createEntityManager();
    }
}
