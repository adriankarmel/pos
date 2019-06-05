<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   

<html>
	<head>
		
	</head>
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>	
	<body id="page-top">
		<form:form action="save" modelAttribute="product" method="POST" class="text-black-50">
				
			<!-- need to associate this data with job id -->
			<%-- <form:hidden path="Id" /> --%>		
				
			<%@ include file="menu.jsp" %>
			<div class="container">		
				<br />		
				<div class="row">
					<div class="col labelAzul">
						<h2>Add Product</h2>
					</div>	
				</div>
				<hr>
			    <div class="form-group">
					<label for="name">Name</label>
					<form:input path="name" cssClass="form-control" autofocus="autofocus"/>
					<form:errors path="name" cssClass="error"></form:errors>
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