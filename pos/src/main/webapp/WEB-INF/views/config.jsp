<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   

<html>
	<head>
		
	</head>
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>	
	<body id="page-top">
		<form:form action="save" modelAttribute="config" method="POST" class="text-black-50">			
			
			<%@include file="menu.jsp"%>
			<form:hidden path="Id" /> 
	
			<br />
			<div class="container">				
				<div class="row">
					<div class="col">
						<h3 class="text-warning">Configuration</h3>
					</div>	
				</div>
				<hr>	
    			
				<form:hidden path="id" cssClass="form-control" />					
			 	
    			<div class="form-group">
					<label for="companyName"><span class="text-danger"> * </span>Company Name</label>
					<form:input path="companyName" cssClass="form-control" autofocus="autofocus" maxlength="50"/>
					<form:errors path="companyName" cssClass="error"></form:errors>
			 	</div>					
			 	<div>
					<h5 class="text-warning">Address Information</h5>
				</div>				
				
				<div class="form-group">
					<label for="address">Address</label>
					<form:input path="address" cssClass="form-control" />
					<form:errors path="address" cssClass="error"></form:errors>
			 	</div>
				<hr>
			    <div class="form-group">
				    <div class="row">
			    		<div class="col-md-4">
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
			    		<div class="col-md-4">
							<label for="city">City</label>
							<form:input path="city" cssClass="form-control" maxlength="45" />
							<form:errors path="city" cssClass="error"></form:errors>
						</div>
			    		<div class="col-md-4">
							<label for="postalCode">Postal Code</label>
							<form:input path="postalCode" cssClass="form-control" maxlength="10" />
							<form:errors path="postalCode" cssClass="error"></form:errors>
						</div>							
				 	</div>
			   </div>				 	
			 	<div>
					<h5 class="text-warning">Contact Information</h5>
				</div>				
				
			   <div class="form-group">
				    <div class="row">
			    		<div class="col-md-6">
							<label for="phoneOne">Phone One</label>
							<form:input path="phoneOne" cssClass="form-control" maxlength="20" />
							<form:errors path="phoneOne" cssClass="error"></form:errors>
						</div>	
			    		<div class="col-md-6">
							<label for="phoneTwo">Phone Two</label>
							<form:input path="phoneTwo" cssClass="form-control" maxlength="20" />
							<form:errors path="phoneTwo" cssClass="error"></form:errors>
						</div>
				 	</div>			 	
			   </div>
			   <div class="form-group">
				    <div class="row">
			    		<div class="col-md-6">
							<label for="emailOne">Email One</label>
							<form:input path="emailOne" cssClass="form-control text-lowercase" maxlength="80" />
							<form:errors path="emailOne" cssClass="error"></form:errors>
						</div>	
			    		<div class="col-md-6">
							<label for="emailTwo">Email Two</label>
							<form:input path="emailTwo" cssClass="form-control text-lowercase" maxlength="80" />
							<form:errors path="emailTwo" cssClass="error"></form:errors>
						</div>
				 	</div>
				 	<hr>
				</div>				   
			 	<div align="center">						
					<button type="submit" class="btn btn-warning">Save</button>
					<button type="button" class="btn btn-warning" onClick="history.go(-1);">Go Back</button>							
				</div>			   	
			</div>				
		</form:form>
				
	</body>
</html>