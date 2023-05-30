<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: Sena
  Date: 16/05/2023
  Time: 10:48 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="autor" content="Hector Arley Beltran Rubio">
    <meta name="description" content="Formulario De Registro De Productps">
    <meta name="keywords" content="formulario,product">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link  rel="icon" href="img/logo.ico" type="image/ico"/>

</head>
<body>

<header>
    <br><br><br>
    <h1> <%= "Formulario De Registro De Producto" %> </h1>
    <img src="img/logo.png" alt="logo" width="350" height="300">

</header>
<br/>


<nav>

</nav>
<section>
    <div class="container">
        <form  action="registerProduct" method="post">
            <ul>
                <li>
                    <label for="product_name">Nombre De Producto:</label>
                    <input type="text" id="product_name" name="product_name" placeholder="Ingrese El Nombre Del Producto" autofocus>
                </li>

                <li>
                    <label for="product_value">Valor De Producto:</label>
                    <input type="text" id="product_value" name="product_value" placeholder="Ingrese El Valo Del Producto" >
                </li>
                <li>
                    <label for="category_id"> Id Categoria:</label>
                    <input type="text" id="category_id" name="category_id" placeholder="Ingrese El Id De La Categoria" >
                </li>

                <li class="button">
                    <button type="submit">Envíar</button>
                </li>

                <li>
                    <a href="login.jsp">Login</a>

                    <a href="registro_categoria.jsp">Registro Categoria</a>
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

