<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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


<!-- <script type="text/javascript">
	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null
	};
</script>
 -->

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
<body class="container-fluid">
	<!-- main container-->
	<!-- creating navigation bar-->

	<nav
		class="navbar navbar-expand-md bg-light navbar-light border border-primary"
		id="nav-bar">
		<div class="navbar-header">
			<a herf="index.html" class="navbar-brand"><b
				style="color: #A9A9A9;">Blogger-Clone</b></a>
		</div>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavBar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavBar">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="/showindex" class="nav-link"><b>Home</b></a>
				</li>

				<li class="nav-item"><a href="/user/profile" class="nav-link"><b>Profile</b></a>
				</li>
				<li class="nav-item"><a href="/post/showpostlist"
					class="nav-link"><b>Post</b></a></li>
				<li class="nav-item"><a href="#""
					class="nav-link"><b>Notification</b></a></li>
				<li class="nav-item"><a href="/user/showraiseconcern"
					class="nav-link"><b>Raise Concern</b></a></li>
				<li class="nav-item"><a href="/user/logout" class="nav-link"><b>logout</b></a>
				</li>
			</ul>
			<!-- login-signup option-->
		</div>
	</nav>
</body>
</html>