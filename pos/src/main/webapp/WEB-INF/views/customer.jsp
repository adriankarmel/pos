<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
			
		<title>List Customer</title>
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
		
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
		
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
				document.body.scrollTop = 0;
				document.documentElement.scrollTop = 0;
			}
	 	</script>	 		
	</head>
	
	<body id="page-top">
		<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>	
		<form:form action="save" modelAttribute="customer" method="POST">
				
			<!-- need to associate this data with job id -->
			<%-- <form:hidden path="Id" /> --%>		
				
			<%@ include file="menu.jsp" %>
			<div class="container text-black-50">				
				<br />
				<div class="row">					
					<div class="col">
						<h2>Add Customer</h2>
					</div>	
				</div>		
				<hr>
				<div class="row">
					<div class="col-6">
					    <div class="form-group">
							<label for="firstName">First Name</label>
							<form:input path="firstName" cssClass="form-control" autofocus="autofocus"/>
							<form:errors path="firstName" cssClass="text-danger"></form:errors>
					 	</div>	
					</div>
					<div class="col-6"> 	
					    <div class="form-group">
							<label for="lastName">Last Name</label>
							<form:input path="lastName" cssClass="form-control" />
							<form:errors path="lastName"  style="color:#7FFF00;font-weight:bold"></form:errors>
					 	</div>	
					 </div>	
				</div>	 
			 	<hr>
			 	<div class="labelAzul">
					<h5>Address Information</h5>
				</div>
				
		 	    <div class="form-group">
					<label for="address">Address</label>
					 <form:input path="address" cssClass="form-control" />
					<form:errors path="address" cssClass="text-danger"></form:errors>
			 	</div>
			 	
			 	<div class="form-group">
					<label for="postalCode">Postal Code</label>
					 <form:input path="postalCode" cssClass="form-control" />
					<form:errors path="postalCode" cssClass="text-danger"></form:errors>
			 	</div>		 	
			 	<div class="row">
					<div class="col-6">	 	
					    <div class="form-group">
							<label for="contactTypeOne">Contact Type One</label>
							<form:input path="contactTypeOne" cssClass="form-control" />
							<form:errors path="contactTypeOne" cssClass="text-danger"></form:errors>
					 	</div>
					     <div class="form-group">
							<label for="contactOne">Contact One</label>
							<form:input path="contactOne" cssClass="form-control" />
							<form:errors path="contactOne" cssClass="error"></form:errors>
			 			</div>	
					</div>
					<div class="col-6">
					    <div class="form-group">
							<label for="contactTypeTwo">Contact Type Two</label>
							<form:input path="contactTypeTwo" cssClass="form-control" />
							<form:errors path="contactTypeTwo" cssClass="error"></form:errors>
					 	</div>					
					    <div class="form-group">
							<label for="contactTwo">Contact Two</label>
							<form:input path="contactTwo" cssClass="form-control" />
							<form:errors path="contactTwo" cssClass="text-danger"></form:errors>
					 	</div>			
					</div>
				</div>	
			
			 	
		
			 
			    <div class="form-group">
					<label for="contactTypeThree">contactTypeThree</label>
					<form:input path="contactTypeThree" cssClass="form-control" />
					<form:errors path="contactTypeThree" cssClass="error"></form:errors>
			 	</div>
			
			    <div class="form-group">
					<label for="contactThree">contactThree</label>
					<form:input path="contactThree" cssClass="form-control" />
					<form:errors path="contactThree" cssClass="text-danger"></form:errors>
			 	</div>			  	 	
			 	 
			 	<hr>	
			 	<div align="center">						
					<button type="submit" class="btn btn-outline-light text-dark">Save</button>
					<button type="button" class="btn btn-outline-light text-dark">Go Back</button>							
				</div>
			</div>				
		</form:form>
	</body>
</html>