<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Blogger-Clone</title>
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

#center-container {
	margin-top: 10px;
	height: auto;
}

#main-blog-container {
	/*padding-right: 20px;
        padding-left: 20px;*/
	padding-top: 5px;
	padding-bottom: 5px;
	margin-bottom: 10px;
	border: 1px solid black;
	background-color: #F6F6F8;
}

#image-container {
	margin: 0px;
	height: auto;
}

#read-more-button {
	padding-bottom: 5px;
}

#nav-bar {
	background-color: #C60021;
}

#next-button {
	align-content: center;
}

#footer-container {
	border: 1px solid black;
	padding-top: 10px;
	margin-top: 5px;
}
</style>
</head>
<body>
	<footer class="page-footer font-small">
		<div class="row" id="footer-container">
			<div class="col-md-4">
				<span class="text-primary">Subscribe to our newsletter</span><br>
				<!-- NewsLetter button-->
				<form action="/subs/newsletter" method="post">
				<div class="input-group">
					<input type="email" class="form-control" name="email"
						placeholder="abc@gmail.com">
					<div class="input-group-append">
						<button class="btn btn-primary" type="submit">Go</button>
					</div>
				</div>
				</form>
			</div>


			<div class="col-md-2">
				<ul style="list-style-type: none; font-size: 16px;">
					<li><a href="#">About-Us</a></li>
					<li><a href="#">Contact</a></li>
					<li><a href="#">Term & Condition</a></li>
				</ul>
			</div>
			<div class="col-md-2">
				<ul style="list-style-type: none;">
					<li><i class="fa fa-facebook-square text-primary"
						style="font-size: 24px; color: red;"></i><a
						href="https://www.facebook.com">Facebook</a></li>
					<li><i class="fa fa-twitter-square text-primary"
						style="font-size: 24px; color: red;"></i><a
						href="https://www.twitter.com">Twitter</a></li>
					<li><i class="fa fa-instagram  text-primary"
						style="font-size: 24px; color: red;"></i><a
						href="https://www/instagram.com">Instagram</a></li>
				</ul>
				<!--<ul style="list-style-type: none;">
              <li><a href="#">Facebook</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Instagram</a></li>
            </ul>
          -->
			</div>
			<div class="col-md-2">
				<div class="footer-copyright text-center">
					<span>&#169;</span> 2020 Copyright: <a href="index.html">Blogger-Clone.com</a>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</footer>
</body>
</html>