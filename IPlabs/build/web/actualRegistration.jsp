<%-- 
    Document   : actualRegistration
    Created on : 8 Dec, 2017, 3:00:12 PM
    Author     : ankit
--%>

<%@ page import ="java.sql.*" %>
<%
    String first = request.getParameter("first");    
    String last = request.getParameter("last");
    String mail = request.getParameter("mail");
    String uname = request.getParameter("uname");
    String pass = request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/IPproj",
            "root", "ubuntu123");
    Statement st = con.createStatement();
    //ResultSet rs;
   PreparedStatement preparedStatement = con.prepareStatement("insert into members(first_name, last_name, email, uname,pass, regdate)values(?,?,?,?,?,CURDATE())");
    preparedStatement.setString(1,first);
    preparedStatement.setString(2,last);
    preparedStatement.setString(3,mail);
    preparedStatement.setString(4,uname);
    preparedStatement.setString(5,pass);
   preparedStatement.execute();
    %>
   
    <%
    //int i = st.executeUpdate("insert into article(category, description, source, timer,Title, imageurl)values('" + category + "','" + description + "','" + source +"', CURDATE()" + ",'" + Title + "','"+imageurl+"')"); 
   // if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("index.jsp");
   
%>
