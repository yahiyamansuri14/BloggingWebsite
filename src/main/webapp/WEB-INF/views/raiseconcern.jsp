<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Raise Concern</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	/*font-family: "Times New Roman", Times, serif;*/
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}

body {
	border: 1px solid yellow;
	position: relative;
	background-color: #E3E3E3;
	height: auto;
}

#footer-container {
	border: 1px solid black;
	padding-top: 10px;
	margin-top: 5px;
}

#form-container {
	margin-top: 20px;
	border: 1px solid blue;
	padding-top: 20px;
	padding-right: 20px;
	padding-bottom: 20px;
	padding-left: 20px;
	background-color: #F6F6F8;
	width: 600px;
}

#input-container {
	margin-bottom: 0px;
	padding-bottom: 0px;
}
/*
      #invalid-message{
      	padding: 0px;
      }
      */
</style>
</head>
<body>
	<%@ include file="userheader.jsp"%>
	<div class="container">
		<div class="row justify-content-center" id="contact-form-container">
			<form action="#" method="post" class="was-validated"
				id="form-container">
				<h4 style="color: #A9A9A9;">
					Have A Concern....<b>Raise Here....</b>
				</h4>
				<div class="form-group">
					<label for="firstname" class="text-primary">First Name</label> <input
						type="text" class="form-control" id="firstname"
						placeholder="Enter First Name" required />
					<div class="valid-feedback">Valid First Name</div>
					<div class="invalid-feedback">This field can't be empty</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="text-primary">Last Name</label> <input
						type="text" class="form-control" id="lastname"
						placeholder="Enter Last Name" required />
					<div class="valid-feedback">Valid Last Name</div>
					<div class="invalid-feedback">This field can't be empty</div>
				</div>
				<div class="form-group">
					<label for="email" class="text-primary">Enter Email</label> <input
						type="email" class="form-control" id="lastname"
						placeholder="abc@gmail.com" required />
					<div class="valid-feedback">Valid Email</div>
					<div class="invalid-feedback">Enter a valid email</div>
				</div>
				<div class="form-group">
					<label for="comment" class="text-primary">Concern</label>
					<textarea class="form-control" rows="5">Concern</textarea>
					<div class="valid-feedback">ok</div>
					<div class="invalid-feedback">This field can't be empty</div>
				</div>
				<div class="form-group">
					<button class="btn btn-outline-primary btn-block" type="submit"
						id="login-button">Send...</button>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>