<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : res2
    Created on : 5 Nov, 2017, 12:46:11 PM
    Author     : ankit
--%>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/IPproj"
         user = "root"  password = "ubuntu123"/>

<sql:query var="articleInfo" dataSource="${snapshot}">
    SELECT * FROM article WHERE article.id = ? <sql:param value="${param.id}"/>
</sql:query>
    
    <c:set var="articleDetails" value="${articleInfo.rows[0]}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <h1><%--${articleDetails.Title}</h1>
        ${articleDetails.timer} ${articleDetails.source} ${articleDetails.category}
        <br />
        <p>${articleDetails.description}</p>
        <br />
        ${articleDetails.vote}--%>
    </body>
</html>
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<title>${articleDetails.Title}</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="img/brain_small.png?cb=1" />
	<link rel="stylesheet" href="css1/style.css" type="text/css" media="all" />
	<!--[if IE 6]>
		<link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" />
	<![endif]-->
	<link rel="stylesheet" href="js1/fancybox/jquery.fancybox-1.3.1.css" type="text/css" media="screen" />
	
	<script type="text/javascript" src="js1/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js1/jquery.jcarousel.js"></script>
	<script type="text/javascript" src="js1/fancybox/jquery.fancybox-1.3.1.js"></script>
	<script type="text/javascript" src="js1/jquery-func.js"></script>
</head>
<body>
<!-- Shell -->
<div id="shell">
	<!-- Header -->
	
	<!-- /Header -->
	
	<!-- Navigation -->
	<div id="navigation">
            <ul><div class="toolbar">
                    <li><a href="/IPlabs"><span style="color:white">Curious</span></a></li>
			<li><a href="/IPlabs/response.jsp?id=${articleDetails.category}"><span style="color:white">SPACE</span></a></li>
			
                </div>    
		</ul>
		
	</div>
	<!-- /Navigation -->
	
	<!-- Main -->
	<div id="main" class="big-box">
		<div class="bg-top">
			<div class="bg-bottom">
				<!-- Big Slider -->
				<div id="big-slider" class="slider">
					<!-- Slider Holder -->
					<div class="slider-holder">
						<ul>
							<!-- Slide -->
						    <li>
						    	<div class="image">
                                                            <img src="${articleDetails.imageurl}" alt="" style="height:325px;width: 541px" />
						    	</div>
						    	
						    	<div class="data">
						    		<h2>${articleDetails.Title}</h2>
						    		
						    		<p>${articleDetails.timer}</p>
						    		<p>${articleDetails.source}</p>
                                                                <p>${articleDetails.category}</p>
                                                                
						    	</div>
						    </li>
						   
						</ul>
						<div class="cl">&nbsp;</div>
					</div>
					<!-- Slider Holder -->
					
					<!-- Slider Link -->
					<a href="#" class="slider-link">View</a>
					<!-- /Slider Link -->
				</div>
				<!-- /Big Slider -->
				
				<!-- Top Text Block -->
				<div id="top" class="text-block">
					<!-- Content -->
					<div id="content" class="box">
						<h3>${articleDetails.Title} </h3>
						
                                                <p><b>${articleDetails.description}</b></p>
                                                <br> 
                                                    <span><a id="img1"><img src="css/ic_flag_black_36dp_1x.png"> </a><span><font id="span1" size="5">${articleDetails.vote}</font></b></span> </span>
					</div>
					<!-- Content -->
					<!-- Box -->
					<div class="box last" id="login Request">
						<h3>Consectetur  elit</h3>
						
						<p>Aliquam ac congue nunc. Mauris a tortor ut massa egestas tempus. Pellentesque tincidunt fermentum diam sagittis ullamcorper.</p>
						
						<p>Cras aliquet tellus sed dolor aliquet condimentum &hellip; <a href="#">read more</a></p>
					</div>
					<!-- /Box -->
					<div class="cl">&nbsp;</div>
				</div>
			
				
				
			</div>
		</div>
	</div>
	<!-- /Main -->
	
	
</div>
<!-- /Shell -->
</body>
                                        <script>
                                           var cat="${articleDetails.category}";
                                           var flag=1;
                                           
                                           
                                            $(function(){
                                                $("#img1").click(function(){
                                                      
                                           
                                                <%  
                                                 if ((session.getAttribute("userid") != null)) {
                                             
                                                %>
                                                  //console.log( );
                                                   var y= $("#span1").html(); 
                                                   y=(parseInt(y)+1);
                                                   var x=""+y;
                                                   function getSearchParams(k){
                                                        var p={};
                                                        location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi,function(s,k,v){p[k]=v;});
                                                        return k?p[k]:p;
                                                       }

                                                   var id=getSearchParams("id"); 
                                                   console.log(id);
                                                   
                                                   $.ajax({
                                                        type : "POST",
                                                        url : "updateVote.jsp",
                                                        data : "vote=" + x +"&id=" + id +"&category=" + cat + "&user=" + "<%=session.getAttribute("userid")%>",
                                                        success : function(data) {
                                                            //alert("hhddj"+data);
                                                        
                                                        
                                                           // if(data.success==false){
                                                            if ($.trim(data) === "wow"){
                                                            alert("The following article is being deleted as the maximum value of downvote has reached");
                                                                window.location.href ="/IPlabs/response.jsp?id="+cat;
                                                            
                                                           }
                                                          if($.trim(data) === "already"){
                                                            alert("You have already flagged this article");
                                                           }
                                                           
                                                          else{
                                                              alert(data);
                                                            $("#span1").html(data);
                                                             }
                                                        }
                                                    });
                                                    return false;
                                                    console.log( <%=session.getAttribute("userid")%>);
                                                     <%
                                                  }
                                                  else{
                                                %>  
                                                    window.location.href ="loginPage.jsp";
                                                    <%
                                                        }
                                                    %>
                                                });
                                            });
                                            
                                            </script>
</html>
                                        