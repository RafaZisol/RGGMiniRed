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
    </head>
    <body>
        <h1>Perfiles</h1>
        <table>
            <thead>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th></th>
            </thead>
            <%
                UsuarioDAO dao = new UsuarioDAO();
                List<Usuario>list=dao.consultar();
                Iterator<Usuario>iter=list.iterator();
                Usuario usu;
                while(iter.hasNext()){ 
                    usu=iter.next();
            %>
            <tbody>
                <tr>
                    <td><%=usu.getNombre()%></td>
                    <td><%=usu.getApellido()%></td>
                    <td>
                        <a href="SvComentario?nombre=<%=usu.getNombre()%>">Comentar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </body>
</html>
