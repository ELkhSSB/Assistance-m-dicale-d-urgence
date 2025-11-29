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
        <section class="hero1">
            <div class="container1">
                <h1>L'inconscience</h1>
                
            </div>
        </section>
    <div class="container">
        <h1>Technique : la libération des voies aériennes <span class="highlight">L'inconscience</span></h1>
        
        
       
            <p>En cas de perte de conscience, les muscles sont relâchés, ce qui provoque une obstruction des voies aériennes par la chute de la langue dans le fond de la gorge.</p>
            <p>Ce risque peut être écarté en basculant la tête de la victime en arrière et en soulevant son menton.</p>
            <ol>
                <li>Desserrez si vous le pouvez le col, la cravate ou la ceinture de la victime.</li>
                <li>Placez une main sur le front de la victime et basculez délicatement sa tête vers l'arrière.</li>
                <li>Dans un même temps, positionnez l'extrémité des doigts de l'autre main sous le bout du menton de la victime et soulevez celui-ci pour décoller la langue du fond de la gorge et dégager ainsi les voies aériennes.</li>
                <li>N'exercez aucune pression sur la région molle située sous le menton pour ne pas entraver la respiration.</li>
                <li>Vérifiez la respiration de la victime :</li>
                <li>Vérifiez que la poitrine se soulève et s'abaisse régulièrement.</li>
                <li>Écoutez les bruits de la respiration en approchant votre oreille de sa bouche.</li>
                <li>Essayez de sentir le souffle de sa respiration en plaçant votre joue près de sa bouche pendant 10 secondes.</li>
            </ol>
            </div>
            <img src="../images/inco_lib.png" alt=""  class="img">
            <div class="container">
        <h1>Technique : la mise en  <span class="highlight">position latérale de sécurité </span>(PLS)</h1>
        <ol>
            <li>Si la victime porte des lunettes, ôtez-les lui.</li>
            <li>Assurez-vous que ses jambes sont allongées côte à côte. Si ce n'est pas le cas, rapprochez-les délicatement l'une de l'autre de manière à les placer dans l'axe du corps.</li>
            <li>Disposez le bras de la victime le plus proche de vous à angle droit de son corps. Pliez ensuite son coude tout en gardant la paume de sa main tournée vers le haut.</li>
            <li>Placez-vous à genoux ou en trépied à côté de la victime.</li>
            <li>Saisissez l'autre bras de la victime d'une main, placez le dos de sa main contre son oreille, de votre côté.</li>
            <li>Maintenez la main de la victime pressée contre son oreille, paume contre paume.</li>
            <li>Attrapez la jambe la plus éloignée de vous avec l'autre main, juste derrière le genou, et relevez-la tout en gardant le pied au sol.</li>
            <li>Placez-vous assez loin de la victime, au niveau de son thorax, pour pouvoir la tourner sur le côté vers vous, sans avoir à reculer.</li>
            <li>Faites rouler la victime en tirant sur sa jambe jusqu'à ce que le genou touche le sol.</li>
            <li>Dégagez doucement votre main de sous la tête de la victime en maintenant son coude de votre autre main afin de ne pas entraîner sa main et d'éviter ainsi toute mobilisation de sa tête.</li>
            <li>Ajustez la jambe située au-dessus de sorte que la hanche et le genou soient à angle droit.</li>
            <li>Ouvrez la bouche de la victime d'une main, avec le pouce et l'index, sans mobiliser la tête, afin de permettre l'écoulement des liquides vers l'extérieur.</li>
            <li>Demandez à quelqu'un d'appeler les secours ou bien allez chercher de l'aide si vous êtes seul.</li>
            <li>Vérifiez régulièrement que la respiration est normale.</li>
      </div>  
        <img src="../images/alt1.png" alt="" class="img">
    

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
    