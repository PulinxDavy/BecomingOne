package com.becomingone.filters;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.*;
import java.io.IOException;

/**
 * Created by Davy on 7/27/2015.
 */
public class JpaFilter implements Filter {
    private static EntityManagerFactory entityManagerFactory;
    private static ThreadLocal<EntityManager> entityManagers;

    @Override
    public void init(FilterConfig fConfig) throws ServletException {
        entityManagerFactory = Persistence.createEntityManagerFactory("ChickNorris");
        entityManagers = new ThreadLocal<EntityManager>();

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException,
            ServletException {
        entityManagers.set(entityManagerFactory.createEntityManager());
        try {
            chain.doFilter(request, response);
        } finally {
            EntityManager entityManager = entityManagers.get();
            if (entityManager.getTransaction().isActive()) {
                entityManager.getTransaction().rollback();
            }
            entityManager.close();
            entityManagers.remove();
        }
    }

    public static EntityManager getEntityManager() {
        return entityManagers.get();
    }

    @Override
    public void destroy() {
        entityManagerFactory.close();

    }
}
