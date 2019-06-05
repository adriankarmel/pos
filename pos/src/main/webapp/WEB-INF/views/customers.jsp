<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
											 
	</head>
	
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>	
	<body id="page-top">
	
			<%@include file="menu.jsp"%>		
			<br />
			<form:form action="search" method="POST" class="text-black-50">					
				<div class="container">				
					<div class="row">
						<div class="col">
							<h2>List Customer
								<button type="button" class="btn btn-outline-light text-dark" onclick="location.href='new'; return false;" title="Add Customer">+</button>
							</h2>
						</div>	
					</div>										
				
				   	<div class="input-group">  
					    <input type="text" class="form-control" name="theSearchName">
					    <span class="input-group-btn">
					    	<button type="submit" class="btn btn-primary">Search</button>
					  	</span>
					</div>	
					<hr>
				</div>
					           
            </form:form>            	
          		
          	<div class="container">						
				<div class="row text-black-50 font-weight-bold">
					<div class="col">First Name</div>
					<div class="col">Last Name</div>
					<div class="col">Phone</div>
					<div class="col">Edit</div>
					<div class="col">Delete</div>
				</div>			
				<c:forEach var="tempCustomer" items="${customers}">				
					<div class="row rowhover">
						<c:url var="updateLink" value="/customer/update">
							<c:param name="customerId" value="${tempCustomer.id}" />
						</c:url>	
						<c:url var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${tempCustomer.id}" />
						</c:url>							
						<div class="col"><a href="${updateLink}">${tempCustomer.firstName}</a></div>
						<div class="col"><a href="${updateLink}">${tempCustomer.lastName}</a></div>
						<div class="col"><a href="${updateLink}">${tempCustomer.email}</a></div>	
					
						<div class="col">
							<a href="${deleteLink} EditIconColor" onclick="if (!(confirm('Are you sure you want to delete this Id: ' + ${tempCustomer.id} + '?'))) return false">
								<i class="material-icons">edit</i>
							</a>
						</div>	
						
						<div class="col">
							<a href="${deleteLink}">
								<i class="material-icons icon-blue">delete_outline</i>	
							</a>
						</div>	
					</div>					
				</c:forEach>
			</div>		
	</body>
</html>