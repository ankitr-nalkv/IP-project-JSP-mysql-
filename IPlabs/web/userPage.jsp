<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%-- 
    Document   : response
    Created on : 3 Nov, 2017, 12:38:07 PM
    Author     : ankit
--%>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/IPproj"
         user = "root"  password = "ubuntu123"/>
<sql:query var="articleQuery" dataSource="${snapshot}">
    SELECT * FROM article WHERE article.userId= ? <sql:param value="${param.id}"/>
</sql:query>
<sql:query var="userQuery" dataSource="${snapshot}">
    SELECT * FROM members WHERE members.id= ? <sql:param value="${param.id}"/>
</sql:query>
        

<c:set var="roll" value="${userQuery.rows[0]}"/>

    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Articles</title>
    </head>

    <body>
        
       <%--  <c:forEach var="roll" items="${articleQuery.rows}">
             <div><a href="res2.jsp?id=${roll.id}">
        <table>
            <tr>
                <th colspan="2">${roll.Title}</th>
            </tr>
            <tr>
                <td><strong>Description: </strong></td>
                <td><span style="font-size:smaller; font-style:italic;">${roll.description}</span></td>
            </tr>
            <tr>
                <td><strong>Counselor: </strong></td>
                <td><strong>${roll.source}</strong>
                    <br><span style="font-size:smaller; font-style:italic;">
                        <em>member since: ${roll.vote}</em></span></td>
            </tr>
           
        </table>
                 </a>
            <br />
            </c:forEach>--%>
        
    </body>
</html>-->
       



<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Multi-Height Grid Layout</title>
  <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>

<link href='https://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
<link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
      <style>
        body * {
  font-family: 'Source Sans Pro', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  line-height: 1.4rem;
}

body {
  background: #efefef;
  color: #3a3a3a;
}
hr.star-primary{max-width:250px;margin:25px auto 30px;padding:0;text-align:center;border:none;border-top:solid 5px},hr.star-primary:after{font-family:FontAwesome;font-size:2em;position:relative;top:-.8em;display:inline-block;padding:0 .25em;content:'\f005'}hr.star-light{border-color:#fff}hr.star-light:after{color:#fff;background-color:#18bc9c}hr.star-primary{border-color:#2c3e50}hr.star-primary:after{color:#2c3e50;background-color:#fff}.img-centered{margin:0 auto}section{padding:100px 0};
body:before {
  content: '';
  display: block;
  position: fixed;
  z-index: 0;
  height: 100%;
  width: 100%;
  max-height: 100vh;
  max-width: 100wh;
  top: 0px;
  left: 0px;
  box-shadow: inset 0px 0px 50px rgba(0, 0, 0, 0.55);
}

a {
  color: #0074D9;
  text-decoration: none;
  font-size: 0.85rem;
  opacity: 0.75;
  linear-gradient: ease-in-out 0.6s;
}
a:hover {
  linear-gradient: ease-in-out 0.6s;
  opacity: 1;
}

.container {
  width: 90%;
  max-width: 1280px;
  margin: 0px auto;
}

.toolbar {
  position: fixed;
  z-index: 2;
  width: 100%;
  height: 3.75rem;
  padding: 0px;
  vertical-align: middle;
  overflow: hidden;
  background: rgba(25, 47, 66, 0.95);
  color: white;
  box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.25);
}

.toolbar-section {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.toolbar-section:first-child {
  width: 60%;
}
.toolbar-section:last-child {
  width: 35%;
}
@media (max-width: 480px) {
  .toolbar-section {
    display: block;
  }
  .toolbar-section:last-child {
    display: none;
  }
}

.toolbar-item {
  display: block;
  padding: 1rem 1rem 1rem 1rem;
  white-space: nowrap;
}

.form-field {
  text-align: right;
}
.form-field input {
  font-size: 1rem;
  line-height: 1.4rem;
  height: 1.4rem;
  max-width: 100%;
  display: inline-block;
  padding: 4px 7px;
  border: 1px solid rgba(32, 60, 84, 0.95);
  background: rgba(22, 42, 59, 0.95);
  outline: 0px;
  color: rgba(136, 176, 210, 0.95);
}
.form-field input::-webkit-input-placeholder {
  color: rgba(255, 255, 255, 0.35);
}
.form-field input:-moz-placeholder {
  color: rgba(255, 255, 255, 0.35);
}
.form-field input::-moz-placeholder {
  color: rgba(255, 255, 255, 0.35);
}
.form-field input:-ms-input-placeholder {
  color: rgba(255, 255, 255, 0.35);
}

.logo {
  font-family: "Oswald", Helvetica, Arial, sans-serif;
  font-size: 1em;
  letter-spacing: 0.15rem;
}
.logo i {
  font-size: 1.2em;
  margin-right: 6px;
}

.dynamic-grid {
  position: relative;
  z-index: 1;
  -webkit-columns: 240px 3;
     -moz-columns: 240px 3;
          columns: 240px 3;
  -webkit-column-gap: 15px;
     -moz-column-gap: 15px;
          column-gap: 15px;
}
.dynamic-grid.container {
  padding-top: 6rem;
}

.grid-item {
  position: relative;
  display: inline-block;
  margin: 1rem;
  max-width: 100%;
  column-break-inside: avoid;
}
.grid-item .inner {
  padding: 1rem 1rem 1rem 1rem;
}

.content-box {
  border: 0px solid #e6e6e6;
  background-color: white;
  box-shadow: 0px -1px 2px rgba(58, 58, 58, 0.1), 1px 1px 2px rgba(58, 58, 58, 0.1);
}
.content-box:before {
  content: '';
  position: absolute;
  display: block;
  width: 100%;
  height: 4rem;
  left: 0px;
  top: 0px;
}

.content-box-thumb {
  display: block;
  max-width: 100%;
  height: auto;
}

.content-box-header {
  font-size: 1rem;
  margin: 0.75rem 0rem 0rem 0rem;
}

.content-box-blurb {
  font-size: 0.85rem;
  display: block;
  display: -webkit-box;
  margin: 0rem;
  max-width: 100%;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  overflow: hidden;
  text-overflow: ellipsis;
}

.readmore-link {
  display: block;
  margin: 5px 5px 0px 5px;
  text-align: right;
}
#imag1{
    float: left;
    margin-left:22%;
    border-radius: 50%;
}
#head2{
    float: right;
    margin-right:20%;
}
#head3{
    
    margin-top:25%;
}


        </style>

  
</head>

<body>
  <!-- JJ -->

  
  
<div id="contentBoxApp" ng-app="contentBoxApp">
  <div id="GridCtrl" ng-controller="GridCtrl">  
    <div class="toolbar">
      <div class="container">
        <div class="toolbar-section">
          <span class="logo toolbar-item"><i class="fa fa-picture-o"></i>${roll.first_name} ${roll.last_name}</span>
        </div><!-- /.toolbar-section -->
        <div class="toolbar-section">
          <div class="toolbar-item form-field">
              <input type="text" name="filter" placeholder="phrase to filter" ng-model="search"/><b><a style="color:white" href="logout.jsp">Logout</a></b>
          </div>
            
        </div><!-- /.toolbar-section -->
      </div><!-- /.container -->
    </div><!-- /.toolbar -->
    
    <br><br><br><br>
    <center><h1>My Profile</h1></center>
    <hr class="star-primary">
    <img id="imag1" src="view.jsp">
    <div id="head2">
        <br>
        <b>   <font size="5"><pre>        NAME:                     ${roll.first_name} ${roll.last_name}<br>
        EMAIL:                    ${roll.email}<br>
        USER NAME:        ${roll.uname}<br>
        REGISTRATION DATE:  ${roll.regdate}</pre></font></b>
    </div>
  
    <br><br>
<center><h1 id="head3">My Articles</h1></center><hr class="star-primary">
    <div class="container dynamic-grid">
          <article class="grid-item content-box" ng-repeat="(gridKey, gridItem) in gridItems | filter:filterBySearch">
       <div class="inner">
        <img class="content-box-thumb"src="{{ gridItem.img }}" alt="tech image" />
        <h1 class="content-box-header">
          {{ gridItem.headerText }}
        </h1>
        <p class="content-box-blurb">
          "{{ gridItem.blurbText }}"
        </p>
        <a class="readmore-link" href="res2.jsp?id={{gridItem.id}}" ng-click="toggleBlurb($event)">read more</a>
        </div>
      </article><!-- /.content-box -->
      
    </div><!-- /.dynamic-grid -->
  </div><!-- /#GridCtrl -->
  
  
</div><!-- /#contentBoxApp -->
<!-- SDG -->
  <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.3.2/angular.min.js'></script>

    <script>
      var contentBoxApp = angular.module('contentBoxApp', []);
var gridCtrl = contentBoxApp.controller('GridCtrl', function($scope) {
  var regex;
 $scope.escapeRegExp = function(string){
      return string.replace(/([.*+?^=!:$}()|\[\]\/\\])/g, "\\$1");
  };
  $scope.gridItems=[];
  <c:forEach var="roll" items="${articleQuery.rows}">
    var x= "${roll.description}".replace(/['"]+/g, '');
    console.log(x);
    var obj = {img: '${roll.imageurl}',
                    headerText: "'${roll.Title}'",
                    blurbText: x,
                    id: ${roll.id}};
          $scope.gridItems.push(obj);
          
             </c:forEach>
          //console.log("hi");   
  $scope.search = '';
  $scope.$watch('search', function (value) {
      regex = new RegExp('\\b' + $scope.escapeRegExp(value), 'i');
  });
  $scope.filterBySearch = function(gridItem) {
      if (!$scope.search) return true;
      return regex.test(gridItem.headerText + " " + gridItem.blurbText);
  };
  $scope.toggleBlurb = function($event) {
    console.log($event);
  };
});
    </script>

</body>
</html>
