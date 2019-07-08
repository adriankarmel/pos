<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>POS</title>
	</head>
	<body>
		<%// response.sendRedirect("customer/list"); %>
	</body>
</html>

<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link type="text/css" rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/style.css" />
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>				 			

		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
		
		<style>
		
			div { box-sizing: border-box; }
			
			.container {
				  display: flex;
				  justify-content: center;
				  align-content: flex-start;
				  -webkit-flex-flow: row wrap;
				  flex-flow: row wrap;		  
				  height: 200px;			 
			}
			
			.circle {
			 	background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 220 220' width='100%25' height='100%25' preserveAspectRatio='none'><defs><linearGradient id='gradient'><stop offset='0' style='stop-color:rgb(189, 63, 50)' /><stop offset='0.5' style='stop-color:RGB(203,53,107)' /><stop offset='1' style='stop-color:rgb(0,0,255)' /></linearGradient></defs><ellipse ry='100' rx='100' cy='110' cx='110' style='fill:none;stroke:url(%23gradient);stroke-width:6;' /></svg>");
						background-size: 100% 100%; /* Fix for Fifefox image scaling */		   
			    border-radius: 50%;
			    background-color: black;
			    width: 200px;
			    height: 200px;
			    border-radius: 1000px;     
			    margin: 50px 0.5em 0.5em 0.5em; 
			    color: white;
			  	font-weight: bold;
			}
			
			.circle1 {
			 	background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 220 220' width='100%25' height='100%25' preserveAspectRatio='none'><defs><linearGradient id='gradient'><stop offset='0' style='stop-color:rgb(255,252,0)' /><stop offset='0.5' style='stop-color:rgb(255,255,255)' /><stop offset='1' style='stop-color:%2383eb8a' /></linearGradient></defs><ellipse ry='100' rx='100' cy='110' cx='110' style='fill:none;stroke:url(%23gradient);stroke-width:6;' /></svg>");
						background-size: 100% 100%; /* Fix for Fifefox image scaling */		   
			    border-radius: 50%;
			    background-color: black;
			    width: 200px;
			    height: 200px;
			    border-radius: 1000px;     
			    margin: 50px 0.5em 0.5em 0.5em; 
			    color: white;
			  	font-weight: bold;
			}
			
			.circle.kitten {
			    background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 220 220' width='100%25' height='100%25' preserveAspectRatio='none'><defs><linearGradient id='gradient'><stop offset='0' style='stop-color:rgb(255,0,204)' /><stop offset='0.5' style='stop-color:rgb(51,51,153)' /><stop offset='1' style='stop-color:rgb(238,130,238)' /></linearGradient></defs><ellipse ry='100' rx='100' cy='110' cx='110' style='fill:none;stroke:url(%23gradient);stroke-width:6;' /></svg>");
						background-size: 100% 100%; /* Fix for Fifefox image scaling */	    background-color: black;
			    background-size: cover;
			    background-repeat: none;
			    background-position: center center;
			    color: white;
			    font-weight: bold;
			}
			
			.circle:hover {
			     color: #009999;	
			     opacity:0.5;
			     font-size: 20px;	
			}
			
			.circle1:hover {
			     color: rgb(255,165,0);		
			     opacity:0.5;    
			     font-size: 20px;		
			}
			
			.circle.kitten:hover {
			    color: #4CA64C;	
			    opacity:0.5;
			    font-size: 20px;		
			}
			
			
			<!-- -->
			
			
			.circle_b {
			 	background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 220 220' width='100%25' height='100%25' preserveAspectRatio='none'><defs><linearGradient id='gradient'><stop offset='0' style='stop-color:%230070d8' /><stop offset='0.5' style='stop-color:%232cdbf1' /><stop offset='1' style='stop-color:%2383eb8a' /></linearGradient></defs><ellipse ry='100' rx='100' cy='110' cx='110' style='fill:none;stroke:url(%23gradient);stroke-width:6;' /></svg>");
						background-size: 100% 100%; /* Fix for Fifefox image scaling */		   
			    border-radius: 50%;
			    background-color: black;
			    width: 200px;
			    height: 200px;
			    border-radius: 1000px;     
			    margin: 50px 0.5em 0.5em 0.5em; 
			    color: white;
			  	font-weight: bold;
			}
			
			.circle_b_1 {
			 	background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 220 220' width='100%25' height='100%25' preserveAspectRatio='none'><defs><linearGradient id='gradient'><stop offset='0' style='stop-color:rgb(255,0,0)' /><stop offset='0.5' style='stop-color:rgb(255,128,0)' /><stop offset='1' style='stop-color:%2383eb8a' /></linearGradient></defs><ellipse ry='100' rx='100' cy='110' cx='110' style='fill:none;stroke:url(%23gradient);stroke-width:6;' /></svg>");
						background-size: 100% 100%; /* Fix for Fifefox image scaling */		   
			    border-radius: 50%;
			    background-color: black;
			    width: 200px;
			    height: 200px;
			    border-radius: 1000px;     
			    margin: 50px 0.5em 0.5em 0.5em; 
			    color: white;
			  	font-weight: bold;
			}
			
			.circle_b.kitten_b {
			    background: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 220 220' width='100%25' height='100%25' preserveAspectRatio='none'><defs><linearGradient id='gradient'><stop offset='0' style='stop-color:rgb(179,17,144)' /><stop offset='0.5' style='stop-color:rgb(229,45,39)' /><stop offset='1' style='stop-color:rgb(179,18,23)' /></linearGradient></defs><ellipse ry='100' rx='100' cy='110' cx='110' style='fill:none;stroke:url(%23gradient);stroke-width:6;' /></svg>");
						background-size: 100% 100%; /* Fix for Fifefox image scaling */	    background-color: black;
			    background-size: cover;
			    background-repeat: none;
			    background-position: center center;
			    color: white;
			    font-weight: bold;
			}
			
			.circle_b:hover {
			     color: #009999;	
			     opacity:0.5;
			     font-size: 20px;	
			}
			
			.circle_b_1:hover {
			     color: rgb(255,165,0);		
			     opacity:0.5;    
			     font-size: 20px;		
			}
			
			.circle_b.kitten_b:hover {
			    color: #4CA64C;	
			    opacity:0.5;
			    font-size: 20px;		
			}
			
			.aligner {
				  display: flex;
				  align-items: center;
				  justify-content: center;
				  height: 100%;
				  text-align: center;
			}	
				
			.marca{
				  color:#ff0000;
			}
			
			.marca1{
				  color:#FFFF33;
			}

		</style>
	</head>
	<body style="background:black;"> 
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		    <a class="navbar-brand" href="/index/home"><span class="marca">Karmel - </span><span class="marca1">POS</span></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  	
		  <div class="collapse navbar-collapse" id="navbarColor02">
		    <ul class="navbar-nav mr-auto">
		      
		      <li class="nav-item active">
		        <a class="nav-link" href="/sale/new">POS <span class="sr-only">(current)</span></a>
		      </li> 
		        		      
		       <li class="nav-item">
		        <a class="nav-link" href="/product/list">Products</a>
		      </li>		  
		      <li class="nav-item">
		        <a class="nav-link" href="/customer/list">Customers</a>
		      </li>		 
		    </ul>		
		  </div>
		</nav> 
				
		<div class="row">
			<div class="col-sm-12">
				<div class="grad1"></div>
			</div>
		</div>
		<div class="container">		
		    <div class="circle">
			     <div class="aligner">
			      	<a href="/pos/new" style="text-decoration:none;color:white;">POS</a>
			    </div>
			 </div>		  
			 <div class="circle1">
			    <div class="aligner">
			      	<a href="product/list" style="text-decoration:none;color:white;">Products</a>
			    </div>			   
			  </div> 		  
			  <div class="circle kitten">
			    <div class="aligner">
			      	<a href="customer/list" style="text-decoration:none;color:white;">Customer</a>
			    </div>
			  </div>
		</div>	
	<!-- 	<div class="container">		
		    <div class="circle_b">
			     <div class="aligner">
			      	<a href="reports/list" style="text-decoration:none;color:white;">Reports</a>
			    </div>
			 </div>		  
			 <div class="circle_b_1">
			    <div class="aligner">
			      	<a href="user/list" style="text-decoration:none;color:white;">User</a>
			    </div>
			  </div> 		  
			  <div class="circle_b kitten_b">
			    <div class="aligner">
			      	<a href="config/edit" style="text-decoration:none;color:white;">Configuration</a>
			    </div>
			  </div>
		</div>		
		 -->
	</body>
</html> 