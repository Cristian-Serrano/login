<!-- login.jsp -->
<%@page import="org.iesvdm.modelo.Usuario"%>
<%
 String usuario = request.getParameter("usuario");
 String contrasena = request.getParameter("contrasena");
  if (usuario.equals("pepe") && contrasena.equals("1234")) {
   session.setAttribute("usuario", new Usuario(usuario, contrasena));
   response.sendRedirect("index.jsp");
 } else {
   session.setAttribute("error", "Usuario o contraseņa incorrecto");
   response.sendRedirect("formulario-login.jsp");
 }
%>
