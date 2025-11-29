<%@page import="java.util.List"%>
<%@page import="metier.Victime"%>
<%@page import="metier.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gérer les Victimes</title>
    <link rel="stylesheet" href="../../css/admin.css">
</head>
<body>
 <%List<Admin> adm1 = (List<Admin>) session.getAttribute("admin");
 if (adm1 == null) {
     response.sendRedirect("../login.jsp");
     return;  // Assurez-vous de terminer l'exécution après la redirection
 }else{
 Admin adm = adm1.get(0);
List<Victime> victimes= dao.VictimeDao.getAll();
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
            <h2>Gérer les Victimes</h2>
            <div class="profile">
                <img src="../../images/admin.jpg" alt="Photo de Profil">
                <div class="profile-info">
                     <p><%=adm.getNom() %></p>
                  <p><%=adm.getEmail() %></p> 
<!-- 						<p>docteur ali</p>  -->
<!-- 						<p>ali@gmail.com</p> -->
                </div>
            </div>
        </header>
        <section class="victim-management">
            <h3>Liste des Victimes</h3>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nom Complet</th>
                        <th>AMO</th>
                        <th>Âge</th>
                        <th>CIN</th>
                        <th>Degré Urgence</th>
                        <th>Heure</th>
                        <th>Score</th>
                        <th>Lieu</th>
                        <th>État</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% for( Victime v:victimes){ %>
                    <tr>
                        <td><%=v.getId() %></td>
                        <td><%=v.getNomComplet() %> </td>
                        <td><%=v.getAmo()%></td>
                        <td><%=v.getAge() %></td>
                        <td><%=v.getCin() %></td>
                        <td><%=v.getDgreUrg() %></td>
                        <td><%=v.getTime() %></td>
                        <td><%=v.getScore() %></td>
                        <td><%=v.getLieu() %></td>
                        <td><%=v.getEtat() %></td>
                        <td>
                            <a href=""><button class="btn-edit">Modifier</button></a>
						    <a href=""><button class="btn-delete">Supprimer</button></a>
                        </td>
                    </tr>
                    <%}} %>
                </tbody>
            </table>
        </section>
    </div>
</body>
</html>
