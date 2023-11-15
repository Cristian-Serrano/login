<%
 //session.removeAttribute("usuario");
 session.invalidate();  //<== preferible, más seguro
  response.sendRedirect("index.jsp");
%>
