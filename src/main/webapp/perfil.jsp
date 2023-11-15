<!-- perfil.jsp -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.iesvdm.modelo.Usuario" %>
<!DOCTYPE html>
<html>
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Perfil de usuario</title>
 </head>
 <body>
   <%
     if (session.getAttribute("usuario") == null) {
       session.setAttribute("error", "Debe iniciar sesión para acceder a la página de perfil.");
       response.sendRedirect("formulario-login.jsp");
     } else {
   %>
   <h1>Perfil de usuario</h1>
   <table>
     <tr>
       <td>
         <img src="user.png"></td>
       <td>
       <% Usuario usuario = (Usuario)session.getAttribute("usuario");%>
         Usuario: <%= usuario.getUser()%><br>
         Página de perfil con información del usuario.<br>
         <a href="index.jsp">Página principal</a>
       </td>
     </tr>
   </table>
   <%} %>
 </body>
 </html>