package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;


import metier.Victime;

public class VictimeDao {
	private static EntityManagerFactory emf=Persistence.createEntityManagerFactory("walo");
	private static EntityManager em=emf.createEntityManager();
	
	public static int add(Victime vict ) {
		
		em.getTransaction().begin();
		
		em.persist(vict);

		em.getTransaction().commit();
		
		em.close();
		emf.close();
		return vict.getId();
		
	}

	public static String calculeEtat(int c,int s, int s_t,int b,int f,int card) {
		int score=c+s+s_t+f+b+card;
		
		if (score>=9 || s_t!=0 || card!=0) {
			return "sévére";
		}else { if(score>=5) return "moderée";
				else return "legére";
			
		}
	}
	
	public static List<Victime> getAll(){
		em.getTransaction().begin();
//		ArrayList<User> users=new ArrayList<User>();
		Query q= em.createQuery("select e from Victime e");
		
			List<Victime> victimes=q.getResultList();
		em.getTransaction().commit();
		return victimes;
		
		
	}
	public static Victime recherche(int id) {
		
		Victime victim=em.find(Victime.class, id);
		return victim;
	}
}
