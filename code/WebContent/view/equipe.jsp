<%@page import="java.util.List"%>
<%@page import="metier.User"%>
<%@page import="metier.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Équipe d'Urgence</title>
    <link rel="stylesheet" href="../css/equipe.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<%User adm;
List<User> adm1 = (List<User>) session.getAttribute("user");
if (adm1 == null) {
    response.sendRedirect("login.jsp");
    return;  // Assurez-vous de terminer l'exécution après la redirection
}
 else {adm = adm1.get(0);%>
    <header>
        <div class="back_logo">
            <img src="../images/A2.png" alt="Logo de l'application" class="logo">
        </div>
       
                <nav>
                    
                    <ul>
	                    <li><a href="accueil.jsp">Accueil</a></li>
	                    <li><a href="saisirVictime.jsp">Gestion des Blessés</a></li>
	                    <li><a href="premierScour.jsp">Fiche premier secours</a></li>
	                    <li><a href="equipe.jsp">Professionnels</a></li>
	                    <li><a href="#">Rapports</a></li>
	                    <li><a href="../Deconnexion">Deconnexion</a></li>
                        
                    </ul>
                </nav>
            
        </header>
    <div class="team-container">
        <h1>Rencontrez notre Équipe d'Urgence</h1>
        <div class="team-grid">
            <div class="team-member">
                <img src="../images/docteur1.jpeg" alt="">
                <h2>Dr. Jamal</h2>
                <p>Chef du service des urgences</p>
                <p>Avec plus de 20 ans d'expérience, le Dr. jamal est spécialisé en médecine d'urgence et soins intensifs.</p>
            </div>
            <div class="team-member">
                <img src="../images/docteur2.jpeg" alt="Dr">
                <h2>Dr. Mohammed</h2>
                <p>Urgentiste</p>
                <p>Passionnée par la médecine d'urgence, le Dr. Mohammed apporte son expertise et sa compassion à chaque patient.</p>
            </div>
            <div class="team-member">
                <img src="../images/docteur4.jpeg" alt="">
                <h2>Dr. Salma</h2>
                <p class="role">Docteur en pédiatrie</p>
                <p>Dr. salma est passionnée par les soins aux enfants et a une grande expérience en pédiatrie d'urgence.</p>
            </div>
            <div class="team-member">
                <img src="../images/docteur5.jpeg" alt="">
                <h2>Dr. Sanae</h2>
                <p class="role">Docteur en cardiologie</p>
                <p>Avec une spécialisation en cardiologie d'urgence, Dr. Sanae est expert dans la prise en charge des urgences cardiaques.</p>
            </div>
            <div class="team-member">
                <img src="../images/infermier1.jpeg" alt="Infirmière Sophie Martin">
                <h2>Sophia</h2>
                <p>Infirmière en chef</p>
                <p>Sophia supervise l'équipe infirmière et assure des soins de qualité aux patients 24/7.</p>
            </div>
            <div class="team-member">
                <img src="../images/infermiere2.jpeg" alt="Infirmier Jacques Renault">
                <h2>Jamila</h2>
                <p>Infirmier</p>
                <p>Avec une formation en soins critiques, Jamila est un pilier essentiel de notre équipe d'urgence.</p>
            </div>
            <div class="team-member">
                <img src="../images/infermiere4.jpeg" alt="Infirmier Jacques Renault">
                <h2>Jalila</h2>
                <p>Infirmier</p>
                <p>Avec une formation en soins critiques, Jalila est un pilier essentiel de notre équipe d'urgence.</p>
            </div>
        </div>
    </div>
    <footer>
        <div>
            <p>&copy; 2024 Assistance Médicale d'Urgence. Tous droits réservés.</p>
            <ul>
                <li><a href="#">À propos de nous</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">Politique de confidentialité</a></li>
                <li><a href="#">Conditions d'utilisation</a></li>
            </ul>
            <div class="social-media">
                <h4>Suivez-nous</h4>
                <a href="https://facebook.com" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
                <a href="https://linkedin.com" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                <a href="https://instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </footer>
    <%} %>
</body>
</html>
    