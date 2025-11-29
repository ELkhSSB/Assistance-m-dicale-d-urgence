package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import metier.Ambulance;

public class AmbulanceDao {
	private static EntityManagerFactory emf=Persistence.createEntityManagerFactory("walo");
	private static EntityManager em=emf.createEntityManager();
	
	public static void add( String chofeur,String etat,String marque,String dispo,String matricule) {
		Ambulance a= new Ambulance();
		a.setChofeur(chofeur);
		a.setEtat(dispo);
		a.setMarque(marque);
		a.setMatricule(matricule);
		em.getTransaction().begin();

		em.persist(a);
		em.getTransaction().commit();
	}
	public static void update(int id) {
		Ambulance a= em .find(Ambulance.class, id);
		
		em.getTransaction().begin();
		a.setEtat("disponible");
		em.persist(a);
		em.getTransaction().commit();
	}
	public static List<Ambulance> getAll(){
		
		List<Ambulance> ambs=em.createQuery("select e from Ambulance e").getResultList();
		return ambs;
	}
}
