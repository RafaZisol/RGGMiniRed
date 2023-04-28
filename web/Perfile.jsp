<%-- 
    Document   : Perfile
    Created on : 23 abr 2023, 16:26:41
    Author     : USER
--%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession(); 
        %>
        <h1><%=sesion.getAttribute("buscado")%></h1>
        <form action="SvComentar" method="post">
            Nuevo comentario:
            <input type="text" name="comentario">
            <input type="submit" value="Comentar">
        </form>
        <a href="Indice.jsp">
            <button type="button">Volver</button>
        </a>
    </body>
</html>
