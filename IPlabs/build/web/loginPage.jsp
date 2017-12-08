<%-- 
    Document   : loginPage
    Created on : 8 Dec, 2017, 11:22:39 AM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>login </title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="css/freelancer.min.css" rel="stylesheet">

    </head>
    <body>
        <br>
        <div class="container">
            <h2 class="text-center">Login</h2>
            <hr class="star-primary">
            <div class="row">
                <div class="col-lg-8 mx-auto">
                    <form method="post" action="login.jsp">
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                                <label>User Name</label>
                                <input class="form-control" id="name" type="text" name="uname" value="" placeholder="User Name" required data-validation-required-message="Please enter your username.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="form-group floating-label-form-group controls">
                                <label>Password</label>
                                <input class="form-control" id="password" type="password" name="pass" value="" placeholder="Password" required data-validation-required-message="Please enter the password.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>

                        <br>
                        <div id="success"></div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-success btn-lg" id="sendMessageButton">Login</button>
                        </div>
                           
                    </form>
                    
                        <a href="registrationPage.jsp" style="color:white"class="btn btn-success btn-lg">Register</a>
                    
                </div>
            </div>
        </div>
    </body>
</html>