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
    <title>Assistance Médicale d'Urgence</title>
    <link rel="stylesheet" href="../css/test.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<% User adm;
List<User> adm1 = (List<User>) session.getAttribute("user");
if (adm1 == null) {
    response.sendRedirect("login.jsp");
    return;  // Assurez-vous de terminer l'exécution après la redirection
}
 else {adm = adm1.get(0);
 %>
    <header>
        <div class="container">
            <nav>
                <div class="back_logo">
                    <img src="../images/A2.png" alt="Logo de l'application" class="logo">
                </div>
                <ul>
                    <li><a href="accueil.jsp">Accueil</a></li>
                    <li><a href="saisirVictime.jsp">Gestion des Blessés</a></li>
                    <li><a href="premierScour.jsp">Fiche premier secours</a></li>
                    <li><a href="equipe.jsp">Professionnels</a></li>
                    <li><a href="#">Rapports</a></li>
                    <li><a href="../Deconnexion">Deconnexion</a></li>
                   
                </ul>
            </nav>
        </div>
    </header>
    
    <section class="hero">
        <div class="container">
            <h1>Bienvenue sur Assistance Médicale d'Urgence</h1>
            <p>Votre Solution pour la Gestion des Urgences Médicales</p>
            <a href="premierScour.jsp" class="btn">Commencer Maintenant</a>
        </div>
    </section>
    
    <section class="features">
        <div class="container">
            <div class="feature">
                <a href="saisirVictime.jsp"><img src="../images/patient.png" alt="Icône patient"> </a>
                <h2>Gestion des Blessés</h2>
                <p>Enregistrez et suivez les informations des blessés en temps réel.</p>
            </div>
            <div class="feature">
                <img src="../images/team.png" alt="Icône groupe">
                <h2>Coordination des Intervenants</h2>
                <p>Coordonnez efficacement les équipes médicales sur le terrain.</p>
            </div>
            <div class="feature">
                <img src="../images/doc1.png" alt="Icône document">
                <h2>Génération de Rapports</h2>
                <p>Téléchargez-vous des rapports PDF (assurances, ordonnances, etc.) ?</p>
            </div>
            <div class="feature">
                <img src="../images/phone2.png" alt="Icône smartphone">
                <h2>Accès Mobile</h2>
                <p>Utilisez notre application web pour rester connecté où que vous soyez.</p>
            </div>
        </div>
    </section>
    
    <section class="testimonials">
        <div class="container">
            <h2>Témoignages</h2>
            <div class="testimonial">
                <p>"Cette application a révolutionné notre manière de gérer les urgences. Rapide et efficace!"</p>
                <p>- Dr. kamal</p>
            </div>
            <div class="testimonial">
                <p>"Un outil indispensable pour les secouristes. Tout est accessible en quelques clics."</p>
                <p>- Secouriste insaf</p>
            </div>
        </div>
    </section>
    
    <section class="signup">
        <div class="container">
            <h2>Votre commentaire</h2>
            <form action="#">
                <input type="text" placeholder="Nom" required>
                <input type="email" placeholder="Email" required><br>
                <textarea id="comment" placeholder="votre commentaire" required></textarea> <br>
                <button type="submit" class="btn">S'envoyer</button>
            </form>
        </div>
    </section>
    
    <footer>
        <div class="container">
            <p>&copy; 2024 Assistance Médicale d'Urgence. Tous droits réservés.</p>
            <ul>
                <li><a href="">À propos de nous</a></li>
                <li><a href="">Contact</a></li>
                <li><a href="">FAQ</a></li>
                <li><a href="">Politique de confidentialité</a></li>
                <li><a href="">Conditions d'utilisation</a></li>
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
