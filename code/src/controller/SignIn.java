package controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import metier.Admin;
import metier.User;

/**
 * Servlet implementation class SignIn
 */
@WebServlet("/SignIn")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignIn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// inscription d'un user
		//recuperation de données
		String cin=request.getParameter("cin");
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		String num_Amo=request.getParameter("amo");
		String tele=request.getParameter("tele");
			User u= new User();
		u.setCin(cin);
		u.setNom(nom);
		u.setPrenom(prenom);
		u.setNum_Amo(num_Amo);
		u.setTele(tele);
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("walo");
		EntityManager em=emf.createEntityManager();
		
		em.getTransaction().begin();
		em.persist(u);
		
		em.getTransaction().commit();
		response.sendRedirect("view/login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// connexion d'un user
		HttpSession session=request.getSession();
		//recuperation de données
		String cin=request.getParameter("pwd");
		String num_Amo=request.getParameter("login");
		
		
		EntityManagerFactory emf= Persistence.createEntityManagerFactory("walo");
		EntityManager em= emf.createEntityManager();
		Query q=em.createQuery("select u from User u where cin=:ci and num_Amo=:am");
		
		
		q.setParameter("ci", cin);
		q.setParameter("am", num_Amo);
		List<User> users1= q.getResultList();
		
		
			if(users1.size()!=0) {
				session.setAttribute("user", users1);
				response.sendRedirect("view/accueil.jsp");
			
			}else {Query q1=em.createQuery("select u from Admin u where u.email=:em and u.password=:pwd");
			
			
			q1.setParameter("em",num_Amo );
			q1.setParameter("pwd", cin);
			List<Admin> admin1= q1.getResultList();
			if(admin1.size()!=0) {
				session.setAttribute("admin", admin1);
				response.sendRedirect("view/admin/homeAdmin.jsp");}
			else
			response.sendRedirect("view/login.jsp");
			}
		
		

		
		
	}

}
