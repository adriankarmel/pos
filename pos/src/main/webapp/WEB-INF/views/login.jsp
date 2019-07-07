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


Edit in JSFiddle

    Result
    HTML
    CSS
    JavaScript
    Resources

<!-- This snippet uses Font Awesome 5 Free as a dependency. You can download it at fontawesome.io! -->

<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Sign In</h5>
            <form class="form-signin">
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                <label for="inputEmail">Email address</label>
              </div>

              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <label for="inputPassword">Password</label>
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign in</button>
              <hr class="my-4">
              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Sign in with Google</button>
              <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Sign in with Facebook</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>


