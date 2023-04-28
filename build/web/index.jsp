<%-- 
    Document   : Iniciar.jsp
    Created on : 21 abr 2023, 23:25:40
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SiscoRed</title>
        <link rel="stylesheet" href="./Estilo1.css">
    </head>
    <body>
        <h1>Bienvenido a la SiscoRed.</h1>
        <form action="./Iniciar.jsp">
            <input type="submit" value="Iniciar Sesion" id="boton1">
        </form>
        <br>
        <form action="./Registrar.jsp">
            <input type="submit" value="Registrarse" id="boton2">
        </form>        
    </body>
</html>
