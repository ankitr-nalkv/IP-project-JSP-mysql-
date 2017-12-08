<%-- 
    Document   : registrationPage
    Created on : 8 Dec, 2017, 2:47:25 PM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>

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
  
             <div class="container">
        <h2 class="text-center">Register</h2>
        <hr class="star-primary">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
            <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
            <form method="post" action="imageProcess.jsp" >
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>First Name</label>
                  <input class="form-control" id="name" type="text" name="first" value="" placeholder="First Name" required data-validation-required-message="Please enter your first name.">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Last Name</label>
                  <input class="form-control" id="name" type="text" name="last" value="" placeholder="Last Name" required data-validation-required-message="Please enter your last name">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>email</label>
                  <input class="form-control" id="email" type="text" name="mail" value="" placeholder="email" required data-validation-required-message="Please enter your email-id">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>username</label>
                  <input class="form-control" id="name" type="text" name="uname" value="" placeholder="Username" required data-validation-required-message="Please enter user-name.">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="control-group">
                <div class="form-group floating-label-form-group controls">
                  <label>Password</label>
                  <input class="form-control" id="name" type="password" name="pass" value="" placeholder="Password" required data-validation-required-message="Please enter password">
                  <p class="help-block text-danger"></p>
                </div>
              </div>  
                <br>
               <b> Upload Image </b>  <input type="file" name="myimg">
              <br>
              <br>
              <div id="success"></div>
              <div class="form-group">
                <button type="submit" class="btn btn-success btn-lg" id="sendMessageButton">Register</button>
              </div>
                    
            </form>
          </div>
        </div>
      </div>
    </body>
</html>
<script>
   $(function(){
       $("#sendMessageButton").click(on,function(){
           alert("Rgistration Suucessfull");
       });
   });
    </script>
    
