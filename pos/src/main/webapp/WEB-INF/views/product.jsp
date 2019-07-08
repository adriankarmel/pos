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
						<h3 class="text-success">Add Product
						   <a href="/pos/product/list">
								<i class="material-icons">view_list</i>
							</a>
						</h3>	
					</div>	
				</div>
				<hr>
			    <div class="form-group">
					<label for="description"><span class="text-danger"> * </span>Description</label>
					<form:input path="description" cssClass="form-control" autofocus="autofocus" maxlength="45"/>
					<form:errors path="description" cssClass="text-danger"></form:errors>
			 	</div>	
			 	
			  	<div class="row">
					<div class="col-12">	 	
					    <div class="form-group">
					  	    <a href="/pos/category/list">
								Category
								<i class="material-icons text-success">edit</i>
							</a>
							<p>Adrian:${category.id}</p>
							
						   	<form:select path="category.id" cssClass="form-control">
						   		<!-- <option value="" <c:if test="${empty tempCate.id}">selected="selected"</c:if>>Please Select Category</option>	 -->					   	
			 									 
			 					
			 					
			 					<c:forEach var="tempCate" items="${categories}">
		      						  <option value="${tempCate.id}" <c:if test="${tempCate.id eq category.id}">selected="selected"</c:if>>${tempCate.name}</option>
		     					</c:forEach>	 				  		              
				            </form:select>			            
					     </div>
					 </div>
				</div>
			 	
			 	<div class="form-group">
			 		<div class="row">
			 			<div class="col-sm-6">
							<label for="price">Price</label>
							<form:input path="price" cssClass="form-control" />
							<form:errors path="price" cssClass="text-danger"></form:errors>
						</div>
						<div class="col-sm-6">
							<label for="stock">Stock</label>
							<form:input path="stock" cssClass="form-control" />
							<form:errors path="stock" cssClass="text-danger"></form:errors>
				 		</div>	
				 	</div>	
			 	</div>
			 	
			 	<div class="form-group">
			 		<div class="row">
			 			<div class="col-sm-6">
							<label for="sku">SKU</label>
							<form:input path="sku" cssClass="form-control" />
							<form:errors path="sku" cssClass="text-danger"></form:errors>
						</div>
						<div class="col-sm-6">
							<label for="barCode">Barcode</label>
							<form:input path="barCode" cssClass="form-control" />
							<form:errors path="barCode" cssClass="text-danger"></form:errors>
				 		</div>	
				 	</div>	
			 	</div>
			 	<hr>
				<div class="form-group">
  					<label for="comment">Comment</label>
  					<form:textarea class="form-control" rows="5" path="comments" placeholder="Comments" maxlength="500" />
				</div> 	
			 	<hr>	
			 	<div align="center">						
					<button type="submit" class="btn btn-success">Save</button>
					<button type="button" class="btn btn-success" onClick="history.go(-1);">Go Back</button>							
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