package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import metier.Ambulance;
import metier.File_ambulance;
import metier.User;
import metier.Victime;

public class fileDao {
	private static EntityManagerFactory emf=Persistence.createEntityManagerFactory("walo");
	private static EntityManager em=emf.createEntityManager();
	
public static long add(Victime vict ) {
		
		em.getTransaction().begin();
		
		File_ambulance amb= new File_ambulance();
		amb.setDate(vict.getTime());
		amb.setVictimId(vict.getId());
		em.persist(amb);
		em.getTransaction().commit();
		
		
		return amb.getId();
		
	}

public static void assigner() {
	em.getTransaction().begin();
	List<Victime> victs = em.createQuery(
	        "SELECT p FROM Victime p, File_ambulance f WHERE p.etat='en attente' and p.id = f.victimId ORDER BY " +
	        "CASE p.dgreUrg " +
	        "WHEN 'sévére' THEN 1 " +
	        "WHEN 'moderée' THEN 2 " +
	        "ELSE 3 END ASC, " +
	        "p.score DESC",
	        Victime.class
	    ).getResultList();
	
	 // Récupérer la liste des ambulances disponibles
    List<Ambulance> ambulances = em.createQuery(
        "SELECT a FROM Ambulance a WHERE a.etat = 'disponible'").getResultList();

    // Assigner les ambulances aux patients selon la priorité
    for (Victime vict : victs) {
        if (ambulances.isEmpty()) {
            break;
        }
        Ambulance ambulance = ambulances.remove(0); // Prendre la première ambulance disponible
       ambulance.setEtat("non disponible");
        vict.setEtat("traité");
       
}em.getTransaction().commit();
    }
public static List<File_ambulance> getAll(){
//	ArrayList<User> users=new ArrayList<User>();
	Query q= em.createQuery("select e from File_ambulance e");
	
		List<File_ambulance> ambs=q.getResultList();
	
	return ambs;
	
	
}

}
