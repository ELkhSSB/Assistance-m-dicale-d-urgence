<%@page import="java.util.List"%>
<%@page import="metier.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  List<Admin> adm1 = (List<Admin>) session.getAttribute("admin");
    if (adm1 == null) {
        response.sendRedirect("../login.jsp");
        return;  // Assurez-vous de terminer l'exécution après la redirection
    }else{
    Admin adm = adm1.get(0);
	
%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tableau de Bord Administrateur</title>
    <link rel="stylesheet" href="../../css/admin.css">
</head>
<body>


    <div class="sidebar">
        <div class="sidebar-header">
            <h2>Tableau de Bord</h2>
        </div>
        <ul class="sidebar-menu">
            <li><a href="homeAdmin.jsp">Tableau de Bord</a></li>
            <li><a href="gereUser.jsp">Gérer les Utilisateurs</a></li>
            <li><a href="gererVictime.jsp">Gérer les Victimes</a></li>
            <li><a href="gererAmbulance.jsp">Gérer les Ambulances</a></li>
            <li><a href="file_att.jsp">Gérer la fille d'attente</a></li>
            <li><a href="../../Deconnexion">Déconnexion</a></li>
        </ul>
    </div>
    <div class="main-content">
        <header>
            <h2>Bienvenue,    </h2>
            <div class="profile">
                <img src="../../images/admin.jpg" alt="Photo de Profil">
                <div class="profile-info">
<%--   --%>                  <p>Docteur <%=adm.getNom() %></p>
<%--   --%>                  <p><%=adm.getEmail() %></p> 

<!-- 					<p>Docteur ali</p>  -->
<!--                     <p>ali@gmail.com</p> -->
                </div>
            </div>
        </header>
        <section class="statistics">
            <div class="stat-item">
                <h3>Utilisateurs</h3>
                <p>150</p>
            </div>
            <div class="stat-item">
                <h3>Rapports</h3>
                <p>25</p>
            </div>
            <div class="stat-item">
                <h3>Sessions Actives</h3>
                <p>5</p>
            </div>
        </section>
        <section class="main-section">
            <h3>Activité Récente</h3>
            <ul class="activity-list">
                <li>nouvelle reclamation</li>
                <li>Rapport #23 a été soumis</li>
                <li>je sais pas moi</li>
            </ul>
        </section>
    </div>
    <%} %>
</body>
</html>
