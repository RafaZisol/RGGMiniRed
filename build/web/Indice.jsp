<%-- 
    Document   : Indice
    Created on : 23 abr 2023, 12:57:36
    Author     : USER
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página principal</title>
        <link rel="stylesheet" href="./Estilo2.css">
    </head>
    <body>
        <h1>Perfiles</h1>
        <table>
            <thead>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th></th>
                <th></th>
            </thead>
            <%
                UsuarioDAO dao = new UsuarioDAO();
                List<Usuario>list=dao.consultar();
                Iterator<Usuario>iter=list.iterator();
                Usuario usu;
                while(iter.hasNext()){ 
                    usu=iter.next();
                    String nombre = usu.getNombre();
                    String apellido = usu.getApellido();
            %>
            <tbody>
                <tr>
                    <td><%=nombre%></td>
                    <td><%=apellido%></td>
                    <td>
                        <form action="SvComentario" method="post">                            
                            <input type="text" value="<%=nombre%>" readonly hidden name="buscado">
                            <input type="submit" value="Comentar">
                        </form>
                    </td>
                    <td>
                        <form action="SvComentario2" method="post">                            
                            <input type="text" value="<%=nombre%>" readonly hidden name="buscado">
                            <input type="submit" value="Ver Comentarios">
                        </form>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
            <form action="SvCerrar" method="post">
                <input type="submit" value="Cerrar Sesion">
            </form>
    </body>
</html>
