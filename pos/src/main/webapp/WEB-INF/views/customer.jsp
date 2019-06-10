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
			
		<title>Customer</title>
		
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
			<form:hidden path="Id" /> 	
				
			<%@ include file="menu.jsp" %>
			<div class="container text-black-50">				
				<br />
				<div class="row">					
					<div class="col">
						<h3 class="text-info">Add Customer</h3>
					</div>	
				</div>		
				<hr>
				<div class="row">
					<div class="col-6">
					    <div class="form-group">
							<label for="firstName"><span class="text-danger"> * </span>First Name</label>
							<form:input path="firstName" cssClass="form-control" autofocus="autofocus"/>
							<form:errors path="firstName" cssClass="text-danger"></form:errors>
					 	</div>	
					</div>
					<div class="col-6"> 	
					    <div class="form-group">
							<label for="lastName"><span class="text-danger"> * </span>Last Name</label>
							<form:input path="lastName" cssClass="form-control" />
							<form:errors path="lastName" cssClass="text-danger"></form:errors>
					 	</div>	
					 </div>	
				</div>	 
			 	<hr>
			 	<div>
					<h5 class="text-info">Address Information</h5>
				</div>
				
		 	    <div class="form-group">
					<label for="address">Address</label>
					 <form:input path="address" cssClass="form-control" />
					<form:errors path="address" cssClass="text-danger"></form:errors>
			 	</div>
			 	
			 	<div class="row">
			 		<div class="col-sm-4">
					     <div class="form-group">
							<label for="city">City</label>
						    <form:input path="city" cssClass="form-control" />
							<form:errors path="city" cssClass="text-danger"></form:errors>
					 	</div>
				 	</div>				 	
					<div class="col-sm-4">	
						<div class="form-group">
							<label for="province">Province</label>
							<form:select path="province" class="form-control">
							  	<form:option value="AB">Alberta</form:option>								
							  	<form:option value="BC">British Columbia</form:option>
							  	<form:option value="MB">Manitoba</form:option>
							  	<form:option value="NB">New Brunswick</form:option>
							  	<form:option value="NL">Newfoundland and Labrador</form:option>
							  	<form:option value="NS">Nova Scotia</form:option>
							  	<form:option value="ON">Ontario</form:option>
							  	<form:option value="PE">Prince Edward Island</form:option>
							  	<form:option value="QC">Quebec</form:option>
							  	<form:option value="SK">Saskatchewan</form:option>
							  	<form:option value="NT">Northwest Territories</form:option>
							  	<form:option value="NU">Nunavut</form:option>
							  	<form:option value="YT">Yukon</form:option>							  	
							 </form:select>	
						</div>
					</div> 
					
					 <div class="col-sm-4">	
					 	<div class="form-group">
							<label for="postalCode">Postal Code</label>
							 <form:input path="postalCode" cssClass="form-control" />
							<form:errors path="postalCode" cssClass="text-danger"></form:errors>
					 	</div>	
					 </div>	
				</div> 		 
				<hr>
				<div>
					<h5 class="text-info">Contact Information</h5>
				</div>		
			 	<div class="row">
					<div class="col-6">	 	
					    <div class="form-group">
							<label for="contactTypeOne">Contact Type One</label>
							<form:select path="contactTypeOne" class="form-control">
							  	<form:option value="CellPhone">Cell Phone</form:option>								
							  	<form:option value="HomePhone">Home Phone</form:option>
							  	<form:option value="Email">Email</form:option>											  	
							 </form:select>						
							<form:errors path="contactTypeOne" cssClass="text-danger"></form:errors>
					 	</div>
			   		    <div class="form-group">
							<label for="contactTypeTwo">Contact Type Two</label>
								<form:select path="contactTypeOne" class="form-control">
							  	<form:option value="CellPhone">Cell Phone</form:option>								
							  	<form:option value="HomePhone">Home Phone</form:option>
							  	<form:option value="Email">Email</form:option>											  	
							 </form:select>				
							 <form:errors path="contactTypeTwo" cssClass="error"></form:errors>			
					 	</div>	
					</div>
					<div class="col-6">
				    	 <div class="form-group">
							<label for="contactOne">Contact One</label>
							<form:input path="contactOne" cssClass="form-control" />
							<form:errors path="contactOne" cssClass="error"></form:errors>
			 			</div>							
					    <div class="form-group">
							<label for="contactTwo">Contact Two</label>
							<form:input path="contactTwo" cssClass="form-control" />
							<form:errors path="contactTwo" cssClass="text-danger"></form:errors>
					 	</div>			
					</div>
				</div>
				
				<div class="form-group">
  					<label for="comment">Comment</label>
  					<form:textarea class="form-control" rows="5" path="comments" placeholder="Comments" />
				</div> 				
			 	<hr>	
			 	<div align="center">						
					<button type="submit" class="btn btn-info">Save</button>
					<button type="button" class="btn btn-info" onClick="history.go(-1);">Go Back</button>							
				</div>
			</div>				
		</form:form>
	</body>
</html>