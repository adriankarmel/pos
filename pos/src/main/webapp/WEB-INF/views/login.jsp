<html>
    <head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script>
		$(document).ready(function(){
			$("#search1").click(function(){
				console.log("ddd");
				$.getJSON("product.js", function(result){
					$.each(result, function(i, field){
						$("div").append(field + " ");
					});
				});
			});
		});	
		</script>
		<style>
			input {
			  outline: 0 !important; 
			  border-width: 0 0 2px !important;
			  border-color: #ff0000 !important;
			}
		
			.titulo{
			  color:#ff0000;
			  font-size: 30px;
			  font-weight: bold;
			}
			
			.marca{
			  color:#ff0000;
			}
			.marca1{
			  color:#FFFF33;
			}			
			
			.imgcontainer {
			  text-align: center;
			  margin: 24px 0 12px 0;
			}
			
			img.avatar {
			  width: 25%;
			  border-radius: 25%;
			}
			
		</style>
    </head>	
	
	<body style="background:white;"> 
		<%@include file="menu.jsp"%>	
		<br>
		<div class="container text-black-50">
			<h2>Login</h2>
			<hr>
			  <div class="imgcontainer">
			 	   <img src="../resources/img/persona.png" alt="Avatar" class="rounded-circle" height="250" width="250">
			  </div>
		  
			  <div class="form-group">			
				<input type="text" class="form-control" id="productName" aria-describedby="productHelp" placeholder="email" autofocus>
				<!-- <small id="productHelp" class="form-text text-muted">Enter the product name that you are locking for.</small> -->
			  </div>
			  <div class="form-group">
				<input type="password" class="form-control" id="postalCode" placeholder="password">
			  </div>
		
			  <button type="submit" class="btn btn-danger">Submit</button>
		
		</div> 	
	</body>
</html>
