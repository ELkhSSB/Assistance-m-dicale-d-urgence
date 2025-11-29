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
    <title>Gestes de Premiers Secours</title>
    <link rel="stylesheet" href="../css/premier.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<% User adm;
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
    <!-- Section des étapes des gestes de premiers secours -->
    <div class="steps-container">
        <div class="step">
            <div class="circle">1</div>
            <p>Sécurisez le lieu de l'accident et les personnes impliquées</p>
        </div>
        <div class="step">
            <div class="circle">2</div>
            <p>Appréciez l'état de la victime</p>
        </div>
        <div class="step">
            <div class="circle">3</div>
            <p>Demandez de l'aide</p>
        </div>
        <div class="step">
            <div class="circle">4</div>
            <p>Effectuez les gestes de premiers secours</p>
        </div>
    </div>

    <!-- Section de l'inconscience et de la position latérale de sécurité -->
    <div class="container">
        <div class="image-section">
            <img src="../images/incon.jpeg" alt="Position latérale de sécurité">
        </div>
        <div class="content-section">
            <h1>L'inconscience - la position latérale de sécurité</h1>
            <p>La victime ne parle pas, ne réagit pas et respire ... Que faites-vous ?</p>
            <button class="cta-button"><a href="consience.jsp">J'apprends les gestes</a></button>
        </div>
    </div>

    <!-- Section de hemorragie -->
    <div class="container">
        <div class="image-section">
            <img src="../images/hemor.jpeg" alt="L'hémorragie">
        </div>
        <div class="content-section">
            <h1>L'hémorragie- arrêter le saignement</h1>
            <p>Une personne saigne abondamment... Que faites-vous ?</p>
            <button  class="cta-button"><a href="hemo.jsp">J'apprends les gestes</a></button>
        </div>
    </div>
    <!-- Section de  L'étouffement-->
    <div class="container">
        <div class="image-section">
            <img src="../images/eff.jpeg" alt="L'étouffement">
        </div>
        <div class="content-section">
            <h1>L'étouffement - les bons gestes à adopter</h1>
            <p>Une personne s'étouffe et ne peut pas parler... Que faites-vous ?</p>
            <button class="cta-button">J'apprends les gestes</button>
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
