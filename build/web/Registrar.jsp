<%-- 
    Document   : Registrar.jsp
    Created on : 22 abr 2023, 23:04:47
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <link rel="stylesheet" href="./Estilo1.css">
    </head>
    <body>
        <label><h1>Registrar</h1></label>
        <form action="SvRegistro" method="post">
            <label for="usuario" class="Usu">Nombre</label>
            <br><br>
            <input type="text" value="" id="inputusuario" name="nombre">
            <br><br>
            <label for="correo" class="Corre">Apellidos</label>
            <br><br>
            <input type="text" value="" id="inputcorreo" name="apellidos">
            <br><br>
            <label for="contra" class="Contra">Correo Electronico</label>
            <br><br>
            <input type="email" value="" id="inputcontra" name="correo">
            <br><br>
            <label for="contra1" class="Contra2">Contraseña</label>
            <br><br>
            <input type="password" value="" id="inputcontra1" name="contra">
            <br><br>
            <div>
                <input type="submit" id="boton1" name="Registrar" value="Registrarse" onclick="contras()"/>
            </div>
            
            <br>
        </form>
        <p><a href="./Iniciar.jsp">¿Ya tienes cuenta? Inicia sesión</a></p>
    </body>
</html>
