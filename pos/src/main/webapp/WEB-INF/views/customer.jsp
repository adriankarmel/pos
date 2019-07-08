<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Customer</title>
		
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
						<h3 class="text-info">Add Customer
						   <a href="/pos/customer/list">
								<i class="material-icons">view_list</i>
						   </a>
						</h3>
					</div>	
				</div>		
				<hr>
				<div class="row">
					<div class="col-6">
					    <div class="form-group">
							<label for="firstName"><span class="text-danger"> * </span>First Name</label>
							<form:input path="firstName" cssClass="form-control" autofocus="autofocus" maxlength="45"/>
							<form:errors path="firstName" cssClass="text-danger"></form:errors>
					 	</div>	
					</div>
					<div class="col-6"> 	
					    <div class="form-group">
							<label for="lastName"><span class="text-danger"> * </span>Last Name</label>
							<form:input path="lastName" cssClass="form-control" maxlength="45" />
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
					<form:input path="address" cssClass="form-control" maxlength="50" />				
			 	</div>
			 	
			 	<div class="row">
			 		<div class="col-sm-4">
					     <div class="form-group">
							<label for="city">City</label>
						    <form:input path="city" cssClass="form-control" maxlength="40" />
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
							<form:input path="postalCode" cssClass="form-control"  maxlength="10"/>							
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
							  	<form:option value="Office">Office</form:option>											  	
							 </form:select>						
					 	</div>
			   		    <div class="form-group">
							<label for="contactTypeTwo">Contact Type Two</label>
							<form:select path="contactTypeOne" class="form-control">
							  	<form:option value="CellPhone">Cell Phone</form:option>								
							  	<form:option value="HomePhone">Home Phone</form:option>
							  	<form:option value="Office">Office</form:option>											  	
							 </form:select>
					 	</div>	
					</div>
					<div class="col-6">
				    	 <div class="form-group">
							<label for="contactOne">Contact One</label>
							<form:input path="contactOne" cssClass="form-control" maxlength="25"/>							
			 			</div>							
					    <div class="form-group">
							<label for="contactTwo">Contact Two</label>
							<form:input path="contactTwo" cssClass="form-control" maxlength="25" />						
					 	</div>			
					</div>
				</div>				
				<div class="row">
					<div class="col-6">	 	
					    <div class="form-group">
							<label for="emailOne">Email One</label>
							<form:input path="emailOne" cssClass="form-control text-lowercase" maxlength="80" />
					 	</div>
					 </div>	
			   		  <div class="col-6">
							<label for="emailTwo">Email Two</label>
							<form:input path="emailTwo" cssClass="form-control text-lowercase" maxlength="80"/>
					 </div>	
				</div>
				<hr>
				<div class="form-group">
  					<label for="comment">Comment</label>
  					<form:textarea class="form-control" rows="5" path="comments" placeholder="Comments" maxlength="500" />
				</div> 
				<div align="center">						
					<button type="submit" class="btn btn-info">Save</button>
					<button type="button" class="btn btn-info" onClick="history.go(-1);">Go Back</button>							
				</div>				
			 	<hr>			 	
				<div class="row">
					<div class="col-6">	 	
					    <div class="form-group">
							<label for="createDt">Create Date</label>
							<form:input path="createDt" cssClass="form-control"  readonly="true"/>
					 	</div>
					 </div>	
			   		  <div class="col-6">
							<label for="updateDt">Update Date</label>
							<form:input path="updateDt" cssClass="form-control" readonly="true" />
					 </div>	
				</div>			
			</div>				
		</form:form>
	</body>
</html>