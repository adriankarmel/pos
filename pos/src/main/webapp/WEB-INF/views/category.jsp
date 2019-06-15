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
			
		<title>Category</title>
		
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
		<form:form action="save" modelAttribute="category" method="POST">
				
			<!-- need to associate this data with job id -->
			<form:hidden path="Id" /> 	
				
			<%@ include file="menu.jsp" %>
			<div class="container text-black-50">				
				<br />
				<div class="row">					
					<div class="col">
						<h3 class="text-info">Add Category</h3>
					</div>	
				</div>		
				<hr>
				<div class="row">
					<div class="col-12">
					    <div class="form-group">
							<label for="name"><span class="text-danger"> * </span>Name</label>
							<form:input path="name" cssClass="form-control" autofocus="autofocus" maxlength="25"/>
							<form:errors path="name" cssClass="text-danger"></form:errors>
					 	</div>	
					</div>
				</div>	 
				<hr>
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