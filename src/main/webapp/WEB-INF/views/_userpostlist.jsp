<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All-User-Post</title>
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
	<br>
	<div class="table-responsive-sm">
		<table class="table table-striped table-bordered">
			<thead class="thead-light">
				<tr>
					<th>Date</th>
					<th>Title</th>
					<th>View</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<c:forEach items="${postList}" var="post">
				<tbody>
					<tr>
						<th>${post.createdon}</th>
						<th>${post.title}</th>
						<th><a href="/post/showpost?id=${post.id }" class="btn btn-info">View</a></th>
						<th><a href="/post/editpost?id=${post.id}"
							class="btn btn-primary">Edit</a></th>
						<th><a href="/post/deletepost?id=${post.id}"
							class="btn btn-danger">Delete</a></th>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
	<br>
	<%@ include file="footer.jsp"%>

</body>
</html>