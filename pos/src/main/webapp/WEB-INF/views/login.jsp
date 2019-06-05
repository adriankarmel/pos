<html>
    <head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">	</head> 
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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
