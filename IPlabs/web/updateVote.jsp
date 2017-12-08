
<%-- 
    Document   : updateVote
    Created on : 1 Dec, 2017, 1:42:41 PM
    Author     : ankit
--%>

 
 <%@ page import ="java.sql.*" %>
<%
    String voter = request.getParameter("vote");
    String ide = request.getParameter("id");
    String category = request.getParameter("category");
    String user = request.getParameter("user");
    String userId="";
    //System.out.println(vote+id);
    int id=Integer.parseInt(ide);
    int vote=Integer.parseInt(voter);
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/IPproj","root", "ubuntu123");
    Statement st = con.createStatement();
    ResultSet rs,ps;
    //rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    
    ps=st.executeQuery("select id from members where uname='" + user + "'");
    while(ps.next()){ 
      userId=(ps.getString(1)); //break;
    }
    int use=Integer.parseInt(userId);
    try{
    int testval=st.executeUpdate("insert into voteTable(userId,articleId) values('"+use+"','"+id+"')");
    }
    catch(SQLException e){
        if(e.getErrorCode() == 1062 ){
             response.getWriter().write("already");
             return;
    }
    }
    int bol=st.executeUpdate("update article set vote="+ vote +" where id="+ id +"");
    if(vote==150){
    int hol=st.executeUpdate("delete from article where id="+id+"");
    //response.sendRedirect("/IPlabs/response.jsp?id="+category);
    response.getWriter().write("wow");
    }
    rs=st.executeQuery("select vote from article where id=" + id + "");
    
    while(rs.next()){
        //out.println(rs.getString(1));
        //response.sendRedirect("response.jsp?id="+category);
        response.getWriter().write(rs.getString(1));
    }
    
    
       
    
   
%>