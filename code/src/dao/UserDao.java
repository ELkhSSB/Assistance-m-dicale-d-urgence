package dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import metier.User;

public class UserDao {
	private static EntityManagerFactory emf=Persistence.createEntityManagerFactory("walo");
	private static EntityManager em=emf.createEntityManager();
	public static String add(User u ) {
		
		em.getTransaction().begin();
		em.persist(u);

		em.getTransaction().commit();
		
		em.close();
		emf.close();
		return u.getNum_Amo();
		
	}
	
	public static User recherche(String amo) {
		User u1=new User();
		u1=em.find(User.class,amo);
		
		return u1;
	}
	public static void delete(String amo) {
		em.getTransaction().begin();
		User u1=em.find(User.class,amo);
		em.remove(u1);
		em.getTransaction().commit();
	}
	public static void update(String amo,String nom,String prenom,String cin,String tele) {
		User u1=em.find(User.class,amo);
		em.getTransaction().begin();
		u1.setCin(cin);
		u1.setNom(nom);
		u1.setPrenom(prenom);
		u1.setNum_Amo(amo);
		u1.setTele(tele);
		em.getTransaction().commit();
		
	}
	public static List<User> getAll(){
//		ArrayList<User> users=new ArrayList<User>();
		Query q= em.createQuery("select e from User e");
		
			List<User> users=q.getResultList();
		
		return users;
		
		
	}
	

}
