<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Connexion</title>
    <link rel="stylesheet" type="text/css" href="../css/logStyle.css">
</head>
<body>
    <div class="divContent">
        <img src="../images/A2.png" alt="logo">
        <h2>Login</h2>
        <p>Connecter a votre compte</p>
        <form action="../SignIn" method="post">
            <div class="inputs">
                <input type="text" placeholder="Username" name="login">
                <img src="../images/A1.png" class="icon-user">
            </div>
            <div class="inputs">
                <input type="password" placeholder="Password" name="pwd">
                <span class="icon-lock">&#128274;</span>
            </div>
            <button type="submit">Connecter</button>
            <div class="links">
                <a href="#"  onclick="showDialog()" class="forgetPwd">J'oublier le mot de passe, click ici</a>
                <a href="signIn.jsp" class="New">Créer un nouveau compte</a>
            </div>
        </form>
    </div>
     <script>
        function showDialog() {
            alert("Votre mot de passe et votre CIN");
        }
    </script>
</body>
</html>