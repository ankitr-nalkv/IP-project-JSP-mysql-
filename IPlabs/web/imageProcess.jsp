<%-- 
    Document   : image-process
    Created on : 8 Dec, 2017, 5:16:20 PM
    Author     : ankit
--%>


<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert an Image into MySQL Database</title>
    </head>
    <body>
         <%
Connection conn=null;
PreparedStatement pstmt = null;
ResultSet rs=null;
String url="jdbc:mysql://localhost:3306/IPproj";
FileInputStream fis=null;
 String first = request.getParameter("first");    
    String last = request.getParameter("last");
    String mail = request.getParameter("mail");
    String uname = request.getParameter("uname");
    String pass = request.getParameter("pass");
    String myloc=request.getParameter("myimg"); 
    
//out.print("First Name :"+fname+"myloc="+myloc);
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn=DriverManager.getConnection(url, "root", "ubuntu123");
File image= new File("/home/ankit/Pictures/Screenshots/"+myloc);

  pstmt = conn.prepareStatement("insert into members(first_name, last_name, email, uname,pass, images, regdate)values(?,?,?,?,?,?,CURDATE())");
    pstmt.setString(1,first);
    pstmt.setString(2,last);
    pstmt.setString(3,mail);
    pstmt.setString(4,uname);
    pstmt.setString(5,pass);
  // pstmt.executeUpdate();


fis=new FileInputStream(image);
pstmt.setBinaryStream(6, (FileInputStream) fis, (int) (image.length()));
//if(fis.canRead()){out.println("yes");};
int count = pstmt.executeUpdate();
if(count>0)
{
out.println("insert successfully");
response.sendRedirect("index.jsp");
}
else
{
out.println("not successfully");
}
}
catch(Exception ex)
{
ex.printStackTrace();
}
finally{
try{
if(rs!=null){
rs.close();
rs= null;
}
if(pstmt !=null)
{
pstmt.close();
pstmt=null;
}
if(conn!=null)
{
conn.close();
conn=null;
}
}
catch(Exception e)
{
e.printStackTrace();
}
}
%>
    </body>
</html>