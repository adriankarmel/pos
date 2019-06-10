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
			 <form:hidden path="Id" /> 		
				
			<%@ include file="menu.jsp" %>
			<div class="container">		
				<br />		
				<div class="row">
					<div class="col">
						<h3 class="text-success">Add Product</h3>
					</div>	
				</div>
				<hr>
			    <div class="form-group">
					<label for="name">Name</label>
					<form:input path="name" cssClass="form-control" autofocus="autofocus"/>
					<form:errors path="name" cssClass="error"></form:errors>
			 	</div>	
			 	
			 	<div class="form-group">
					<label for="price">Price</label>
					<form:input path="price" cssClass="form-control" autofocus="autofocus"/>
					<form:errors path="price" cssClass="error"></form:errors>
			 	</div>	
			 	
			 	<div class="form-group">
					<label for="stock">Stock</label>
					<form:input path="stock" cssClass="form-control" autofocus="autofocus"/>
					<form:errors path="stock" cssClass="error"></form:errors>
			 	</div>	
				<div class="form-group">
  					<label for="comment">Comment</label>
  					<form:textarea class="form-control" rows="5" path="comments" placeholder="Comments" />
				</div> 		
				
							 	
			 	<hr>	
			 	<div align="center">						
					<button type="submit" class="btn btn-success">Save</button>
					<button type="button" class="btn btn-success" onClick="history.go(-1);">Go Back</button>							
				</div>
			</div>
		</form:form>				
	</body>
</html>