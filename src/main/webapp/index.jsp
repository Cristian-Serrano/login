<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.iesvdm.modelo.Usuario" %>
<!DOCTYPE html>
<html>
 <head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Página principal</title>
 </head>
 <body>
   <h1>Página principal</h1>
   <%
     if (session.getAttribute("usuario") == null) {
   %>
       <a href="formulario-login.jsp">Entrar</a>
   <%
     } else {
   	  Usuario usuario = (Usuario)session.getAttribute("usuario");
   	
   %>
   Logueado como <a href="perfil.jsp"><%= usuario.getUser() %></a>
       (<a href="logout.jsp">Salir</a>)
   <%
   }
   %>
  
   <p>
     Página principal con información pública que puede ver cualquier usuario.
   </p>
 </body>
</html>