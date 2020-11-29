<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page isELIgnored="false"%>
<%@ page import="io.marsab.minorproject.model.User"%>
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
<body class="container-fluid">
	<!-- main container-->
	<%@ include file="headernormal.jsp"%>
	<!-- Center Container Area-->
	<div class="row" id="center-container">
		<!-- Left Side Column-->
		<div class="col-sm-2"></div>
		<!-- Center Container Area-->
		<div class="col-sm-8">
			<!-- Main Blogs Showing Area-->
			<c:forEach items="${postList}" var="post">
				<div class="row" id="main-blog-container">

					<div class="col-sm-2" id="image-container">
						<!-- image container-->
						<img src="/post/getimage?id=${post.id}" class="img-fluid" />
					</div>

					<div class="col-sm-8">
						<!-- blog text container-->
						<p class="text-primary">${post.username}&nbsp;&nbsp;&nbsp;${post.createdon}</p>
						<br>
						<p>
							<b>${post.title}</b>
						</p>
						<a href="/post/showpost?id=${post.id}"
							class="btn btn-outline-primary" id="read-more-button">Read-More....</a>
						<!-- <button type="button" class="btn btn-outline-primary"  id="read-more-button">Read-More...</button> -->
					</div>

				</div>
			</c:forEach>
			<div class="row">
				<button type="button" class="btn-primary" id="next-button">Next</button>
			</div>
		</div>
		<!-- Right Side Column -->
		<div class="col-sm-2">
			<!-- Tag Button Portion -->
			<button type="button" class="btn btn-outline-primary">primary</button>
			<button type="button" class="btn btn-outline-secondary">secondary</button>
			<button type="button" class="btn btn-outline-success">sucess</button>
			<button type="button" class="btn btn-outline-info">info</button>
			<button type="button" class="btn btn-outline-warning">warning</button>
			<button type="button" class="btn btn-outline-primary">primary</button>
			<button type="button" class="btn btn-outline-secondary">secondary</button>
			<button type="button" class="btn btn-outline-success">sucess</button>
			<button type="button" class="btn btn-outline-info">info</button>
			<button type="button" class="btn btn-outline-warning">warning</button>
			<button type="button" class="btn btn-outline-primary">primary</button>
			<button type="button" class="btn btn-outline-secondary">secondary</button>
			<button type="button" class="btn btn-outline-success">sucess</button>
			<button type="button" class="btn btn-outline-info">info</button>
			<button type="button" class="btn btn-outline-warning">warning</button>
			<button type="button" class="btn btn-outline-primary">primary</button>
			<button type="button" class="btn btn-outline-secondary">secondary</button>
			<button type="button" class="btn btn-outline-success">sucess</button>
			<button type="button" class="btn btn-outline-info">info</button>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>