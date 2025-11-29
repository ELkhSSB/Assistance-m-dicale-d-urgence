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
    <title>Premiers Secours</title>
    <link rel="stylesheet" href="../css/hemo.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<%User adm;
List<User> adm1 = (List<User>) session.getAttribute("user");
if (adm1 == null) {
    response.sendRedirect("../login.jsp");
    return;  // Assurez-vous de terminer l'exécution après la redirection
}
 else {adm = adm1.get(0);%>
    <header>
        <div class="back_logo">
            <img src="images/A2.png" alt="Logo de l'application" class="logo">
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
        <section class="hero">
            <div class="container1">
                <h2>L'hémorragie</h2>
                
                
            </div>
        </section>
    <div class="container">
        <h1>Les étapes de l'intervention pour <span class="highlight">stopper l'hémorragie</span></h1>
        <div class="steps-grid">
            <div class="step">
                <div class="step-number">1</div>
                <h2>Compression de la plaie</h2>
                <p>Evitez, si possible, tout contact avec le sang de la victime : demandez-lui de comprimer elle-même sa blessure. Sinon, exercez une pression directement sur la plaie avec vos mains protégées (gants jetables, sac plastique ou linge).</p>
            </div>
            <div class="step">
                <div class="step-number">2</div>
                <h2>Allonger la victime</h2>
                <p>Allongez la victime en position horizontale.</p>
            </div>
            <div class="step">
                <div class="step-number">3</div>
                <h2>Demander de l'aide</h2>
                <p>Demandez à une personne présente d'alerter les secours ou faites-le vous-même si vous êtes seul.</p>
            </div>
            <div class="step">
                <div class="step-number">4</div>
                <h2>Maintenir la compression</h2>
                <p>Si la plaie continue de saigner, comprimez-la encore plus fermement. Poursuivez la compression sur la plaie jusqu'à l'arrivée des secours.</p>
            </div>
            <div class="step">
                <div class="step-number">5</div>
                <h2>Si vous êtes seul avec la victime</h2>
                <p>Si vous devez vous libérer (par exemple pour aller donner l'alerte), appliquez un tampon relais pour remplacer votre compression manuelle.</p>
            </div>
            <div class="step">
                <div class="step-number">6</div>
                <h2>Se laver les mains</h2>
                <p>Lavez-vous les mains après avoir effectué ces premiers secours.</p>
            </div>
        </div>
        
        <h2>Technique : la mise en place d'un <span class="highlight">tampon relais</span></h1>
        <ol>
            <li>Le tissu mis à la place de la main doit être propre et recouvrir complètement la plaie qui saigne.</li>
            <li>La substitution de la compression manuelle par le tampon relais doit être effectuée le plus rapidement possible.</li>
            <li>Le lien appliqué sur le tampon doit être assez large pour le recouvrir entièrement et assez long pour faire au moins 2 fois le tour du membre blessé.</li>
            <li>Le lien doit être suffisamment serré pour presser sur l'endroit qui saigne et éviter que le saignement ne reprenne.</li>
            <li>Si le tampon relais n'arrête pas totalement l'hémorragie, posez un second tampon, posé sur le premier pour augmenter la compression.</li>
            <li>En cas d'échec, reprenez la compression manuelle.</li>
        </ol>
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
