<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Sena
  Date: 16/05/2023
  Time: 9:42 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="autor" content="Hector Arley Beltran Rubio">
    <meta name="description" content="Formulario De Registro De Categorias">
    <meta name="keywords" content="formulario,category">
    <title>Formulario Registro De Categorias</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link  rel="icon" href="img/logo.ico" type="image/ico"/>

</head>
<body>

<header>
    <br><br><br>
    <h1> <%= "Formulario De Registro Categorias" %> </h1>
    <img src="img/logo.png" alt="logo" width="350" height="300">

</header>
<br/>


<nav>

</nav>
<section>
    <div class="container">
        <form  action="registerCategory" method="post">
            <ul>
                <li>
                    <label for="category_name">Nombre Categoria:</label>
                    <input type="text" id="category_name" name="category_name" placeholder="Ingrese El Nombre De La Categoria" autofocus required pattern="[A-Z a-z]{2,30}">
                </li>

                <li class="button">
                    <button type="submit">Envíar</button>
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
