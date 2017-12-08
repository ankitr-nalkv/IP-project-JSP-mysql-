<%-- 
    Document   : reg
    Created on : 5 Nov, 2017, 5:14:29 PM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="registration.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Category</td>
                        <td><input type="text" name="category" value="" /></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><input type="text" name="description" value="" /></td>
                    </tr>
                    <tr>
                        <td>By</td>
                        <td><input type="text" name="source" value="" /></td>
                    </tr>
                    <tr>
                        <td>Title</td>
                        <td><input type="text" name="title" value="" /></td>
                    </tr>
                    <tr>
                        <td>image URL</td>
                        <td><input type="text" name="imageurl" value="" /></td>
                    </tr>
                   
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">HOME</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>