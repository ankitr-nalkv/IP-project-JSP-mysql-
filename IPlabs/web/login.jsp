<%-- 
    Document   : login
    Created on : 5 Nov, 2017, 5:19:19 PM
    Author     : ankit
--%>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/IPproj",
            "root", "ubuntu123");
    Statement st = con.createStatement();
    ResultSet rs;
    //st.executeUpdate("update members set images=load_file('/home/ankit/Pictures/Screenshots/sticker.png') where id=1");
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>