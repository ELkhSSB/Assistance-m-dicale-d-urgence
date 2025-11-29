<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up</title>
    <link rel="stylesheet" href="../css/styleTest.css">
</head>
<body>
    
        <div class="container">  <!-- background color blue -->
            <img src="../images/A7.png" alt="">
            <div class="Form">
                <img src="../images/A2.png" id="logo" alt="">
                <h2>Créer un nouveau compte</h2>
                <form action="../SignIn" method="get">

<table>
	<tr>
		<tr> <td>Nom :</td> <td><input type="text" name="nom" /> </td></tr>
		<tr> <td>Prenom :</td> <td><input type="text" name="prenom" /> </td></tr>
		<tr> <td>AMO :</td> <td><input type="text" name="amo" /> </td></tr>
		<tr> <td>Password:(CIN)</td> <td><input type="text" name="cin" /> </td></tr>
		<tr> <td>Telephone</td> <td><input type="text" name="tele" /> </td></tr>
		<tr> <td> <input type="submit" value="Envoyer"></td> <td><input type="reset"  /> </td></tr>

</table>
                </form>
                <a href="login.jsp">j'ai deja un compte</a>
            </div>
            
        </div>
    
</body>
</html>