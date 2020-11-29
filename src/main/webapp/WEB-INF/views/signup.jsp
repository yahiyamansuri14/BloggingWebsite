<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- 
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
</head>
<body>
	<form action="/user/signup" method="post">
		ENTER USER-NAME::<input type="text" name="username"/>
		ENTER EMAIL::<input type="email" name="usermail"/>
		ENTER PWD::<input type="password" name="userpwd"/>
		<input type="submit" value="signup"/>
	</form>
</body>
</html>
 -->
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body {
	margin-top: 30px;
	border: 1px solid black;
	background-color: GhostWhite;
}

* {
	/*font-family: "Times New Roman", Times, serif;*/
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}

#login-img-container {padding-left =0px;padding-right =0px;
	
}

#login-signup-text {
	color: blue;
	font-weight: bolder;
	text-align: center;
	font-size: 40px;
	text-decoration: underline;
}

.account-text {
	color: blue;
	font-size: 25px;
}

#mobile-hide {
	hight: 96px;
	width: 100%;
	display: inline;
}

#check1 {
	font-size: 15px;
}
/*
  		@media screen and(max-width: 768px){
  			#mobile-hide{
  				display:none;
  				height:100px;
  				width:100%;
  			}
  		}
  		*/
</style>
<title>login</title>
</head>
<body class="container">
	<!--	<div class="container">
			<div class="row">
				
			</div>
		</div>
	-->
	<%@ include file="headernormal.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-sm " id="login-img-container">
				<img src="login-girl.png" class="img-fluid">
			</div>
			<div class="col-sm">
				<div class="row" id="mobile-hide"></div>
				<div class="row">
					<div class="col-sm">
						<p class="display-5" id="login-signup-text">
							<a href="/showlogin">Login</a>
						</p>
					</div>
					<div class="col-sm">
						<p class="display-5" id="login-signup-text">
							<a href="/showsignup">SignUp</a>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-sm">
						<!--	<p class="account-text">Don't have an Account?<a href="signup.html"><u>Create Account</u></a></p>-->
					</div>
				</div>
				<!-- div for input text -->
				<div class="row" id="mobile-hide"></div>

				<form action="/user/signup" method="post">
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Enter Username" name="username" />
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="Enter Email"
							name="usermail" />
					</div>
					<div class="form-group">
						<input type="password" class="form-control"
							placeholder="Enter password" name="userpwd" />
					</div>
					<div class="form-group row">
						<div class="col-sm">
							<div class="form-check">
								<label class="form-check-label" for="check1"> <input
									type="checkbox" class="form-check-input" id="check1" />
									<p id="check1">
										By clicking, you agree to our terms and services...to read
										Terms of Service <a href="#">click Here...</a>
									</p>
							</div>
						</div>
						<!--	<div class="col-sm" id="check1">
					 			<p>Forget Password</p>
					 		</div>
					 	-->
					</div>
					<div class="form-group">
						<button class="btn btn-outline-primary btn-block" type="submit"
							id="login-button">SignUp</button>
					</div>
				</form>

			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>