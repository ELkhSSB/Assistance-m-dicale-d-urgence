package controller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import dao.VictimeDao;
import metier.Admin;
import metier.File_ambulance;
import metier.Victime;



public class Test {
	private static EntityManagerFactory emf=Persistence.createEntityManagerFactory("walo");
	private static EntityManager em=emf.createEntityManager();
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//Victime vic= new Victime();
//vic.setAge(13);
//vic.setAmo("123456789089056");
//vic.setCin("MD23456");
//vic.setDgreUrg("legere");
//vic.setEtat("en attente");
//
	Victime vict =VictimeDao.recherche(3);	
em.getTransaction().begin();
File_ambulance amb= new File_ambulance();
amb.setDate(vict.getTime());
amb.setVictimId(vict.getId());
em.persist(amb);
em.getTransaction().commit();
		
	}

}
