<%@page import="dao.VictimeDao"%>
<%@page import="metier.Victime"%>
<%@page import="metier.File_ambulance"%>
<%@page import="java.util.List"%>
<%@page import="dao.fileDao"%>
<%@page import="metier.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% List<Admin> adm1 = (List<Admin>) session.getAttribute("admin");
    if (adm1 == null) {
        response.sendRedirect("../login.jsp");
        return;  // Assurez-vous de terminer l'exécution après la redirection
    }else{
    Admin adm = adm1.get(0);List<File_ambulance> ambs=fileDao.getAll();
    
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion de la File d'Attente d'Ambulance</title>
    <link rel="stylesheet" href="../../css/att.css">
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
            <h2>Gérer la file d'attente</h2>
            <div class="profile">
                <img src="../../images/admin.jpg" alt="Photo de Profil">
                <div class="profile-info">
                 <p><%=adm.getNom() %></p>
                  <p><%=adm.getEmail() %></p>
<!--                     <p> Dr el khalfi</p> -->
<!--                     <p>elkhalfi@gmail.com</p> -->
                </div>
            </div>
        </header>
        <div class="content">
         
            <table class="queue-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nom victime</th>
                        <th>Emplacement</th>
                        <th>Score de Gravité</th>
                        <th>niveau</th>
                        <th>Date</th>
                        <th>État</th>
<!--                         <th>Action</th> -->
                    </tr>
                </thead>
                <tbody id="queue-body">
                    <%
                    for(File_ambulance u:ambs){
                    	Victime v=dao. VictimeDao.recherche(u.getVictimId()); %>
                    <tr>
                        <td><%=u.getId() %></td>
                        <td><%=v.getNomComplet()%></td>
                        <td><%=v.getLieu()%></td>
                        <td><%=v.getScore() %></td>
                        <td><%=v.getDgreUrg()%></td>
                        <td><%=u.getDate() %></td>
                        <td><%=v.getEtat()%></td>
<!--                         <td> -->
<!--                            <a href="../../Test1"><button class="btn-edit">Assigner</button></a> -->
						   
<!--                         </td> -->
                    </tr>
                    
                    <%}}  %>
                </tbody>
            </table>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>
