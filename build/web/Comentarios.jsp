<%-- 
    Document   : Comentarios
    Created on : 28 abr 2023, 11:41:19
    Author     : USER
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ComentarioDAO"%>
<%@page import="Modelo.Comentario"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comentarios</title>
    </head>
    <body>
        <%
            HttpSession sesion=request.getSession();
        %>
        <h1>Comentarios de <%=sesion.getAttribute("buscado")%></h1>
        <table>
            <thead>
                <th>Autor</th>
                <th>Comentario</th>
                <th>Fecha</th>
            </thead>
            <%
                ComentarioDAO dao = new ComentarioDAO();
                String comentado = (String) sesion.getAttribute("buscado");
                List<Comentario> list =dao.consultar(comentado);
                Iterator<Comentario> iter = list.iterator();
                Comentario com;
                while(iter.hasNext()){
                    com=iter.next();
                    String Autor = com.getAutor();
                    String Comentario = com.getComentario();
                    String fecha = com.getFecha();                              
            %>
            <tbody>
                <tr>
                    <td><%=Autor%></td>
                    <td><%=Comentario%></td>
                    <td><%=fecha%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
            <a href="Indice.jsp">
                <button type="button">Volver</button>
            </a>
    </body>
</html>
