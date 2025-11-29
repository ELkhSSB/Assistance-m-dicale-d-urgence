package controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.fileDao;
import metier.Ambulance;
import metier.User;
import metier.Victime;

/**
 * Servlet implementation class EnregistrerVict
 */
@WebServlet("/EnregistrerVict")
public class EnregistrerVict extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnregistrerVict() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		User adm;
		List<User> adm1 = (List<User>) session.getAttribute("user");
		adm=adm = adm1.get(0);
		// Recuperation de données
		String nom=request.getParameter("victim-name");
		int age=Integer.parseInt(request.getParameter("victim-age"));
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		Date time=new Date();
//		try {
//			time = dateFormat.parse(request.getParameter("incident-datetime"));
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		String time=request.getParameter("incident-datetime");
		String location=request.getParameter("incident-location");
		
		String ambulance=request.getParameter("ambulance");
		
		int conscience=Integer.parseInt(request.getParameter("consciousness-level"));
		int sang=Integer.parseInt(request.getParameter("sang"));
		int sang_type=0;
		if(sang!=0) {
		 sang_type=Integer.parseInt(request.getParameter("saignement-type"));}
		int fracture=Integer.parseInt(request.getParameter("fracture"));
		int brulure=Integer.parseInt(request.getParameter("burule"));
		int cardio=Integer.parseInt(request.getParameter("cardio"));
		
		// calcule de degre d'urgence
		int score=conscience+sang+sang_type+brulure+fracture+cardio;
		String etat=dao.VictimeDao.calculeEtat(conscience,sang,sang_type,brulure,fracture,cardio);
		//il faut persister dans la base de données
		Victime vic= new Victime();
			vic.setNomComplet(nom);
			vic.setAge(age);
			vic.setEtat("en attente");
			vic.setLieu(location);
			vic.setTime(time);
			vic.setDgreUrg(etat);
			vic.setScore(score);
			vic.setAccompagne(adm.getNum_Amo());
			if (etat.equals("sévére"))
				vic.setType_de_soin("bloc operatoire");
			else if(etat.equals("moderée"))
				vic.setType_de_soin("salle de soin avancée");
			vic.setType_de_soin("salle de soin");
			

		vic.setId(dao.VictimeDao.add(vic));
		
		if(ambulance.equals("oui"))
			fileDao.add(vic);
		dao.fileDao.assigner();
				response.sendRedirect("view/accueil.jsp");



		


	}

}
