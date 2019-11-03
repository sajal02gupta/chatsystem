package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import model.User;

public class UserDao {
	private EntityManagerFactory entityManagerFactory;

	public void create(User s) {

		entityManagerFactory = HibernateOGMUtil.getEntityManagerFactory();

		EntityManager em = entityManagerFactory.createEntityManager();

		em.getTransaction().begin();

		em.persist(s);

		em.getTransaction().commit();
	}
	public String findByEmail(String email) {
		entityManagerFactory = HibernateOGMUtil.getEntityManagerFactory();

		EntityManager em = entityManagerFactory.createEntityManager();
		
		User s = (User) em.createQuery("from User u where u.email=:email").setParameter("email", email).getResultList().get(0);
		
		if(s!=null){
			return s.getEmail();
		}else{
			return "false";
		}
	}
	public String findByPassword(String password) {
		entityManagerFactory = HibernateOGMUtil.getEntityManagerFactory();

		EntityManager em = entityManagerFactory.createEntityManager();
		
		User s = (User) em.createQuery("from User u where u.password=:password").setParameter("password", password).getResultList().get(0);
		
		if(s!=null){
			return s.getPassword();
		}else{
			return "false";
		}
		
	}
}
