<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page isELIgnored="false"%>
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
	border: 1px solid blue;
	content: center;
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

#footer-container {
	border: 1px solid black;
	padding-top: 10px;
	margin-top: 5px;
}

#nav-bar {
	background-color: #C60021;
}

#main-post-container {
	margin-top: 20px;
	border: 1px solid blue;
	padding-top: 20px;
	padding-right: 20px;
	padding-bottom: 20px;
	padding-left: 20px;
	background-color: #F6F6F8;
	width: 600px;
	content: center;
}

#activity-section {
	display: inline-block;
}

#like-button {
	float: left;
}

#dislike-button {
	float: right;
}
#like-count{
	float:left;
	
}
#dislike-count{
	float:right;
}
#comment-box {
	
}
</style>
<script type="text/javascript">
	//var id = ("#dislike-button").val();
	function dislike(id) {
		document.getElementById("dislike-button").disabled=true;
		$.ajax({
			method : "GET",
			url : "/post/adddislikes",
			data : {
				"id" : id
			},
			success : function(data) {
				document.getElementById("dislike-count").innerHTML=data;
			},
			error : function() {
				alert("fail");
			}
		});
	}
	function like(id) {
		document.getElementById("like-button").disabled=true;
		$.ajax({
			method : "GET",
			url : "/post/addlikes",
			data : {
				"id" : id
			},
			success : function(data) {
				document.getElementById("like-count").innerHTML=data;
			},
			error : function() {
				alert("fail");
			}
		});
	}
	function comment(id) {
		$.ajax({
			method : "GET",
			url : "/post/comments",
			data : {
				"id" : id
			},
			success : function(data) {
				document.getElementById("like-count").innerHTML=data;
				
			},
			error : function() {
				alert("fail");
			}
		});
	}
</script>
</head>
<body class="container-fluid">
	<nav
		class="navbar navbar-expand-md bg-light navbar-light border border-primary"
		id="nav-bar">
		<div class="navbar-header">
			<a herf="/" class="navbar-brand"><b style="color: #A9A9A9;">Blogger-Clone</b></a>
		</div>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavBar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavBar">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="/" class="nav-link"><b>Home</b></a>
				</li>
				<li class="nav-item"><a href="/showsignup" class="nav-link"><b>login/signup</b></a>
				</li>
				<li class="nav-item"><a href="/showpostpage" class="nav-link"><b>Post</b></a>
				</li>
				<li class="nav-item"><a href="#" class="nav-link"><b>About
							Us</b></a></li>
				<li class="nav-item"><a href="/showcontactus" class="nav-link"><b>Contact
							Us</b></a></li>
				<li class="nav-item">
					<form class="navbar-form navbar-left">
						<div class="input-group">
							<input type="email" class="form-control" placeholder="Search">
							<div class="input-group-append">
								<button class="btn btn-primary" type="submit">Go</button>
							</div>
						</div>
					</form>
				</li>
			</ul>
		</div>
	</nav>
	<!-- Center Container-->
	<div class="row" id="center-container">
		<!-- Left Side Column-->
		<div class="col-sm-2"></div>
		<!-- Center Container Area-->
		<div class="col-sm-8">
			<!-- Main Blogs Showing Area-->
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10" id="main-post-container">

					<h3 style="font-weight: bolder;">${post.title}</h3>
					<hr style="border: 1px solid black;">
					<span>${post.username}</span>&emsp;&emsp;<span>${post.createdon}</span>&emsp;&emsp;
					<span>Leave a Comment</span>
					<hr style="border: 1px solid black;">

					<img src="/post/getimage?id=${post.id}" class="img-fluid" /> <span>
						${post.content} </span>
					<hr style="border: 1px solid black;">
					<span>Comma Seprated Tags Goes Here.....</span>
					<hr style="border: 1px solid black;">
					
					<button type="button" class="btn btn-outline-info" id="like-count">${post.likes}</button>&nbsp;&nbsp;
					<button class="btn btn-outline-primary" id="like-button"
						value="${post.id}" onclick="like(this.value)">Like</button>
					<button type="button" class="btn btn-outline-danger" id="dislike-count">${post.dislikes}</button>&nbsp;&nbsp;
					<button class="btn btn-outline-danger" id="dislike-button"
						value="${post.id}" onclick="dislike(this.value)">Dislike</button>

					<br>
					<hr style="border: 1px solid black;">
					<textarea style="width: 100%;" class="text-primary"
						placeholder="Share your thoughts..." id="comment-area"></textarea>
					<button class="btn btn-primary" id="comment-button"
						onclick="comment()">Comment</button>
					<hr style="border: 1px solid black;">
					<p class="text-primary" style="padding: 10px;" id="show-comments"></p>
					<hr style="border: 1px solid black;">
				</div>
				<div class="col-sm-1"></div>
			</div>
			<!-- Right Side Column -->
			<div class="col-sm-2">
				<!-- Tag Button Portion -->
			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>
	<footer class="page-footer font-small">
		<div class="row" id="footer-container">
		<!--  -->	<div class="col-md-4">
				<span class="text-primary">Subscribe to our newsletter</span><br>
				<!-- NewsLetter button-->
				<div class="input-group">
					<input type="email" class="form-control"
						placeholder="abc@gmail.com">
					<div class="input-group-append">
						<button class="btn btn-primary" type="submit">Go</button>
					</div>
				</div>
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
