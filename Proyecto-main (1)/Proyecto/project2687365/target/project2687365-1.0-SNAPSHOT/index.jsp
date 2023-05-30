<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Formulario</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link  rel="icon" href="img/logo.ico" type="image/ico"/>

</head>
<body>

<header>
    <br><br><br>
<h1> <%= "Formulario De Registro" %> </h1>
    <img src="img/logito.png" alt="logo" width="350" height="300">

</header>
<br/>


<nav>

</nav>
<section>
<div class="container">
<form  action="" method="post">
    <ul>
        <li>
            <label for="firstname">Nombre:</label>
            <input type="text" id="firstname" name="user_name" placeholder="Ingrese Su Nombre" autofocus required pattern="[A-Z a-z]{2,30}">
        </li>

        <li>
            <label for="lastname">Apellido:</label>
            <input type="text" id="lastname" name="user_name" placeholder="Ingrese Su Apellido" required pattern="[A-Z a-z]{2,30}">
        </li>
        <li>
            <label for="mail"> Correo Electronico</label>
            <input type="email" id="mail" name="user_mail" placeholder="Ingrese Su Correo Electronico" required pattern="{30}">
        </li>
        <li>
            <label for="password">Contraseña:</label>
            <input id="password" name="user_password" placeholder="Ingrese Su Contraseña" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}">
        </li>


        <li class="button">
            <button type="submit">Envíar</button>
        </li>

        <li>
            <a href="login.jsp">Login</a>
        </li>


    </ul>
</form>
<br>
<footer>
    <h1>

        &copy; <%=displayDate()%>

        <%!
            public String displayDate() {
                SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
                Date date = Calendar.getInstance().getTime();
                return dateFormat.format(date);
            }
        %>
    </h1>
</footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</div>
</section>
</body>
</html>
