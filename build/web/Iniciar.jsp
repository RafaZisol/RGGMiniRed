<%-- 
    Document   : Iniciar.jsp
    Created on : 22 abr 2023, 23:04:20
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
    </head>
    <body>
        <form action="SvInicio" method="post">
        <label class="titu">Iniciar sesión</label>
        <br><br>
        <label for="usuario" Class="Usu">Nombre:</label>
        <br>
        <input type="text" value="" id="inputusuario" name="usuario">
        <br><br>        
        <label for="contra" class="Contra">Contraseña: </label>
        <br>
        <input type="password" value="" id="inputcontra" name="contra">
        <br><br>        
        <input type="submit" id="boton2" value="Iniciar Sesión">
        <br>
        <a href="./Registrar.jsp">¿No tienes cuenta? Regístrate</a></p>
        </form>
    </body>
</html>
