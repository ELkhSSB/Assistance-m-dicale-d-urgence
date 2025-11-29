<%@page import="java.util.List"%>
<%@page import="metier.Admin"%>
<%@page import="metier.User"%>
<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier Utilisateur</title>
    <link rel="stylesheet" href="../../css/csModifierUser.css">
</head>
<body>
<%Admin adm;
List<Admin> adm1 = (List<Admin>) session.getAttribute("admin");
if (adm1 == null) {
    response.sendRedirect("../login.jsp");
    return;  // Assurez-vous de terminer l'exécution après la redirection
}
 else {adm = adm1.get(0);
        // Récupération de l'utilisateur à modifier à partir de l'ID passé en paramètre
        String amo = request.getParameter("amo");
        User user = UserDao.recherche(amo); 
        if (user == null) {
            response.sendRedirect("gereUser.jsp?message=userNotFound");
            return;
        }
%>
    <div class="sidebar">
        <div class="sidebar-header">
            <h2>Tableau de Bord</h2>
        </div>
        <ul class="sidebar-menu">
            <li><a href="homeAdmin.jsp">Tableau de Bord</a></li>
            <li><a href="gereUser.jsp">Gérer les Utilisateurs</a></li>
            <li><a href="gererVictime.jsp">Gérer les Victimes</a></li>
            <li><a href="gererAmbulance.jsp">Gérer les Ambulances</a></li>
            <li><a href="file_att.jsp">Gérer la file d'attente</a></li>
            <li><a href="../../Deconnexion">Déconnexion</a></li>
        </ul>
    </div>
    <div class="main-content">
        <header>
            <h2>Modifier Utilisateur</h2>
            <div class="profile">
                <img src="../../images/admin.jpg" alt="Photo de Profil">
                <div class="profile-info">
                    <p><%=adm.getNom() %></p>
                    <p><%=adm.getEmail() %></p>
                </div>
            </div>
        </header>
        <section class="user-edit">
            <h3>Modifier les Informations de l'Utilisateur</h3>
            <form action="../../Update" method="post">
                <div class="form-group">
                    <label for="numAmo">Num AMO</label>
                    <input type="text" id="numAmo" name="numAmo" value="<%=user.getNum_Amo() %>" readonly>
                </div>
                <div class="form-group">
                    <label for="nom">Nom</label>
                    <input type="text" id="nom" name="nom" value="<%=user.getNom() %>" >
                </div>
                <div class="form-group">
                    <label for="prenom">Prénom</label>
                    <input type="text" id="prenom" name="prenom" value="<%=user.getPrenom() %>" >
                </div>
                <div class="form-group">
                    <label for="cin">CIN</label>
                    <input type="text" id="cin" name="cin" value="<%=user.getCin() %>" >
                </div>
                <div class="form-group">
                    <label for="tele">Téléphone</label>
                    <input type="text" id="tele" name="tele" value="<%=user.getTele() %>" >
                </div>
                <div class="form-group">
                    <button type="submit" class="btn-save">Enregistrer</button>
                    <a href="gereUser.jsp" class="btn-cancel">Annuler</a>
                </div>
            </form>
        </section>
    </div>
<% } %>
</body>
</html>
