<%@page import="metier.Admin"%>
<%@page import="metier.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gérer les Utilisateurs</title>
    <link rel="stylesheet" href="../../css/csGererUser.css">
</head>
<body>
<% 
Admin adm;
List<Admin> adm1 = (List<Admin>) session.getAttribute("admin");
if (adm1 == null) {
    response.sendRedirect("../login.jsp");
    return;  // Assurez-vous de terminer l'exécution après la redirection
}
 else {adm = adm1.get(0);
	List<User> users=dao.UserDao.getAll(); %>
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
            <h2>Gérer les Utilisateurs</h2>
            <div class="profile">
                <img src="../../images/admin.jpg" alt="Photo de Profil">
                <div class="profile-info">
                 <p><%=adm.getNom() %></p>
                  <p><%=adm.getEmail() %></p>
<!--                     <p>Nom Administrateur</p> -->
<!--                     <p>admin@exemple.com</p> -->
                </div>
            </div>
        </header>
        <section class="user-management">
            <h3>Liste des Utilisateurs</h3>
            <table>
                <thead>
                    <tr>
                        <th>Num AMO</th>
                        <th>Nom</th>
                        <th>Prénom</th>
                        <th>CIN</th>
                        <th>Tele</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% for(User u:users){ %>
                    <tr>
                        <td><%=u.getNum_Amo() %></td>
                        <td><%=u.getNom()%></td>
                        <td><%=u.getPrenom()%></td>
                        <td><%=u.getCin() %></td>
                        <td><%=u.getTele() %></td>
                        <td>
                           <a href="modifierUser.jsp?amo=<%=u.getNum_Amo() %>"><button class="btn-edit">Modifier</button></a>
						   <a href="../../SupprimeUser?amo=<%=u.getNum_Amo() %>"><button class="btn-delete">Supprimer</button></a>
                        </td>
                    </tr>
                    
                    <%}} %>
                </tbody>
            </table>
        </section>
    </div>
</body>
</html>
    