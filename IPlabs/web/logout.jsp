<%-- 
    Document   : logout
    Created on : 5 Nov, 2017, 5:21:36 PM
    Author     : ankit
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>