<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Reports</title>
		
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
		<form:form action="run" modelAttribute="reports" method="POST">
				
			<!-- need to associate this data with job id -->
			<!--<form:hidden path="Id" /> 	-->
				
			<%@ include file="menu.jsp" %>
			<div class="container text-black-50">				
				<br />
				<div class="row">					
					<div class="col">
						<h3 class="text-info">Reports</h3>
					</div>	
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