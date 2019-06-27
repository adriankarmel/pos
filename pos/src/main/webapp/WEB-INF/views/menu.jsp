<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   

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
		<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet"> 
		<script type="text/javascript">
			window.onscroll = function() {scrollFunction()};
				
				function scrollFunction() {
					if (document.body.scrollTop > 2 || document.documentElement.scrollTop > 2) {
						document.getElementById("myBtn").style.display = "block";
					} else {
						document.getElementById("myBtn").style.display = "none";
					}
				}
				
				// When the user clicks on the button, scroll to the top of the document
				function topFunction() {
					document.documentElement.scrollTop = 0;
				}
			</script>	


<!--Navbar-->
<nav class="navbar navbar-dark bg-dark navbar-6">

  <!-- Navbar brand -->
 <a class="navbar-brand" href="/pos/home"><span class="marca">Karmel - </span><span class="marca1">POS</span></a>


  <!-- Collapse button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent15"
    aria-controls="navbarSupportedContent15" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

  <!-- Collapsible content -->
  <div class="collapse navbar-collapse" id="navbarSupportedContent15">

    <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/pos/new">POS</a>
      </li>
      <hr>
      <li class="nav-item active">
        <a class="nav-link" href="/pos/product/list">Product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/pos/customer/list">Customer</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/pos/user/list">User</a>
      </li>
      <lr>
      <li class="nav-item">
        <a class="nav-link" href="/pos/config/edit">Config</a>
      </li>
    </ul>
    <!-- Links -->

  </div>
  <!-- Collapsible content -->

</nav>
<!--/.Navbar-->
<!-- 		<style>
		
			body {
			    font-family: "Lato", sans-serif;
			}
			
			.sidenav {
			    height: 100%;
			    width: 0;
			    position: fixed;
			    z-index: 1;
			    top: 0;
			    left: 0;
			    background-color: #16499A;
			    overflow-x: hidden;
			    transition: 0.5s;
			    padding-top: 60px;
			}
			
			.sidenav a {
			    padding: 8px 8px 8px 32px;
			    text-decoration: none;
			    font-size: 25px;
			    color: #FFFFFF;
			    display: block;
			    transition: 0.3s;
			}
			
			.sidenav a:hover {
			    color: #f1f1f1;		  
			}
			
			.sidenav .closebtn {
			    position: absolute;
			    top: 0;
			    right: 25px;
			    font-size: 36px;
			    margin-left: 50px;
			}
			
			#main {
			    transition: margin-left .5s;
			    padding: 16px;
			}			
					
	 /*		.trt:nth-child(even) {background: #0e6a85}
			.trt:nth-child(odd) {background: #003366 }	
	 	*/
	 	
	 		.trt{
	 		 	border-top:  1px solid #e5e5e5;
	 		}
	 		
	 		.trt:hover{
	 		 	background-color: #e5e5e5;
	 		 	font-weight: bold;
	 		}
	 		
	 		a:link, :visited{
    			text-decoration: none;
    			color: #222;
			}
			
	 		#myBtn {
				font-weight:bold;
				display: none;
				position: fixed;
				bottom: 20px;
				right: 30px;
				z-index: 99;
				font-size: 12px;
				border: none;
				outline: none;
				background-color: #16499A;
				color: white;
				cursor: pointer;
				padding: 10px;
				border-radius: 180px;
			}
	
			#myBtn:hover {
				background-color: #222464;
				transform:scale(1.3);
				color: white;
			}
			
			.btn-circle.btn-lg {
				  width: 30px;
				  height: 30px;
				  text-align: center;
				  padding: 6px 0px; 
				  font-size: 12px;
				  line-height: 1.428571429;
				  border-radius: 15px;
				  border: 1px solid grey;
				  background-color: white;
			}
			
			@media screen and (max-height: 450px) {
			  .sidenav {padding-top: 15px;}
			  .sidenav a {font-size: 18px;}
			}
			
		</style>	

		<div id="mySidenav" class="sidenav">
			  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			  <a href="/tpm/job/list">Jobs</a>
			  <hr style="color: #ffffff; border-top: 1px solid #ccc">
  			  <a href="/tpm/customer/list">Customers</a>
  			  <a href="/tpm/worker/list">Workers</a>
			  <a href="/tpm/worker/list">Reports</a>
		  
		  <a href="/tpm/hour/list">Hour Rate</a>  
			  <hr style="color: #ffffff; border-top: 1px solid #ccc">
			  <a href="/tpm/config/showForm">Config</a>	  
		</div>
		
		<div id="main">
		  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776</span>
		</div>
		
		<script type="text/javascript">
			function openNav() {
			    document.getElementById("mySidenav").style.width = "250px";
			    document.getElementById("main").style.marginLeft = "250px";
			}
			
			function closeNav() {
			    document.getElementById("mySidenav").style.width = "0";
			    document.getElementById("main").style.marginLeft= "0";
			}
			
			window.onscroll = function() {scrollFunction()};
			
			function scrollFunction() {
				if (document.body.scrollTop > 2 || document.documentElement.scrollTop > 2) {
					document.getElementById("myBtn").style.display = "block";
				} else {
					document.getElementById("myBtn").style.display = "none";
				}
			}
			
			// When the user clicks on the button, scroll to the top of the document
			function topFunction() {
				document.documentElement.scrollTop = 0;
			}
		</script>	 -->