<%-- 
    Document   : registration
    Created on : 5 Nov, 2017, 5:16:30 PM
    Author     : ankit
--%>

<%@ page import ="java.sql.*" %>
<%
    String category = request.getParameter("category");    
    String description = request.getParameter("description");
    //String source = request.getParameter("source");
    String Title = request.getParameter("title");
    String imageurl = request.getParameter("imageurl");
    String users=(String)session.getAttribute("userid");
    String userIds="";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/IPproj",
            "root", "ubuntu123");
    Statement st = con.createStatement();
     ResultSet rs;
    rs = st.executeQuery("select id from members where uname='" + users + "'");
   if(rs.next()){
       userIds=rs.getString(1);
   }
    
   PreparedStatement preparedStatement = con.prepareStatement("insert into article(category, description, source, timer,Title, imageurl,userId)values(?,?,?,CURDATE(),?,?,?)");
    preparedStatement.setString(1,category);
    preparedStatement.setString(2,description);
    preparedStatement.setString(3,users);
    preparedStatement.setString(4,Title);
    preparedStatement.setString(5,imageurl);
    preparedStatement.setString(6,userIds);
    preparedStatement.execute();
    
   //  i = st.executeUpdate("insert into article(category, description, source, timer,Title, imageurl)values('" + category + "','" + description + "','" + source +"', CURDATE()" + ",'" + Title + "','"+imageurl+"')"); 
   // if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("index.jsp");
   
%>