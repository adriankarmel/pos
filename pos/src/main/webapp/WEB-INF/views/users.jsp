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
							<h3 class="text-info">List Users
								<button type="button" class="btn btn-outline-light text-dark" onclick="location.href='new'; return false;" title="Add User">+</button>
							</h3>
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
				<table class="table table-hover">
				  <thead>
				    <tr>   
				      <th scope="col">Edit</th>  
				      <th scope="col">Nickname</th>
				      <th scope="col">Email</th>   
				      <th scope="col">Delete</th>
				    </tr>
				  </thead>
				  <tbody>
				  <c:forEach var="tempUser" items="${users}">
						<c:url var="updateLink" value="/user/update">
							<c:param name="userId" value="${tempUser.id}" />
						</c:url>	
						<c:url var="deleteLink" value="/user/delete">
							<c:param name="userId" value="${tempUser.id}" />
						</c:url>		
						<tr>
					      <td scope="row">	
				      		<a href="${updateLink}">
								<i class="material-icons text-success">edit</i>
							</a>
						  </td>
					      <td><a href="${updateLink}">${tempUser.nickname}</a></td>
					      <td><a href="${updateLink}">${tempUser.email}</a></td>
					      <td>
					      		<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this User ${tempUser.nickname}'))) return false">
					      			<i class="material-icons text-danger">delete_outline</i>
					      		</a>
						   </td>
					    </tr>	
				    </c:forEach>
					  </tbody>
				 </table>	
			</div>		
	</body>
</html>