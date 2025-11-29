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
    <title>Formulaire de Description de Blessure</title>
    <link rel="stylesheet" href="../css/saisVict.css">
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
        <h1>Déclaration sur une Victime</h1>
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
    <div class="container">
    
        <form action="../EnregistrerVict" method="post">
            <h3>Informations Générales</h3>
            <div class="form-group">
                <label for="victim-name">Nom de la victime :اسم</label>
                <input type="text" id="victim-name" name="victim-name" required>
            </div>
            <div class="form-group">
                <label for="victim-age">Âge :عمر</label>
                <input type="number" id="victim-age" name="victim-age" required>
            </div>
            <div class="form-group">
                <label for="incident-datetime">Date et heure de l'incident :</label>
                <input type="datetime-local" id="incident-datetime" name="incident-datetime" required>
            </div>
            <div class="form-group">
                <label for="incident-location">Lieu de l'incident :</label>
                <input type="text" id="incident-location" name="incident-location" required>
            </div>
            <div class="form-group">
                <label>Besoin d'ambulance :</label>
                <label><input type="radio" name="ambulance" value="oui" required checked> Oui</label>
                <label><input type="radio" name="ambulance" value="non" required> Non</label>
            </div>
           
            <div class="form-group radio-group">
                <h3>Évaluation de la Conscience</h3>
                <label>Niveau de conscience :</label>
                <label><input type="radio" name="consciousness-level" value="1" required checked> Conscient(e)واعي</label>
                <label><input type="radio" name="consciousness-level" value="2" required> Semi-conscient(e)شبه واعي</label>
                <label><input type="radio" name="consciousness-level" value="3" required> Inconscient(e)غير واعي</label>
            </div>
         

          
            <div class="form-group radio-group">
                <h3>Saignement</h3>
                <label>Présence de saignement : يوجود نزيف</label>
                <label><input type="radio" name="sang" value="3" required> Oui</label>
                <label><input type="radio" name="sang" value="0" required checked> Non</label>
            </div>
            <div class="form-group radio-group">
                <label>Type de saignement :</label>
                <label><input type="radio" name="saignement-type" value="1"> Contrôlable يمكن السيطره عليه</label>
                <label><input type="radio" name="saignement-type" value="0" checked> Non</label>
            </div>

            
            <div class="form-group radio-group">
                <h3>Fracture</h3>
                <label>Présence de fracture: وجود كسر</label>
                <label><input type="radio" name="fracture" value="2"> Oui</label>
                <label><input type="radio" name="fracture" value="0" checked> Non</label>
            </div>
          

           
            
            <div class="form-group radio-group">
                <h3>Brûlure</h3>
                <label>Présence de brûlure : وجود حروق</label>
                <label><input type="radio" name="burule" value="2">  Oui</label>
                <label><input type="radio" name="burule" value="0" checked>Non</label>
            </div>
            <!-- <div class="form-group checkbox-group">
                <label>Localisation de la brûlure :</label>
                <label><input type="checkbox" name="burn-location" value="visage"> Visage</label>
                <label><input type="checkbox" name="burn-location" value="voies-respiratoires"> Voies respiratoires</label>
                <label><input type="checkbox" name="burn-location" value="mains"> Mains</label>
                <label><input type="checkbox" name="burn-location" value="pieds"> Pieds</label>
                <label><input type="checkbox" name="burn-location" value="organes-genitaux"> Organes génitaux</label>
            </div> -->

            
           
            <div class="form-group radio-group">
                <h3>Évaluation Cardiologique</h3>
                <label>Maladie cardiaque: أعراض أمراض القلب (على سبيل المثال ، ألم شديد في الصدر ، وضيق في التنفس ، والتعرق المفرط)</label>
                <label><input type="radio" name="cardio" value="3"> Oui</label>
                <label><input type="radio" name="cardio" value="0" checked> Non</label>
            </div>

            
            <div class="form-group">
                <h3>Autres Observations</h3>
                <label for="additional-notes">Description complémentaire des blessures et symptômes :</label>
                <textarea id="additional-notes" name="additional-notes" rows="4"></textarea>
            </div>

            <button type="submit">Soumettre</button>
        </form>
    </div>
    <%} %>
</body>
</html>
