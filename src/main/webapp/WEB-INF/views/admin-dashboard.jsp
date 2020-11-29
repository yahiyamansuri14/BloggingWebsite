<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<!-- 
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
table, tr, th {
	border: 1px solid black;
}
</style>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<h3>${delete_message }</h3>
	<table>
		<tr>
			<th>id</th>
			<th>username</th>
			<th>email</th>
			<th>ViewPost</th>
			<th>Send A/C Removal Warning</th>
			<th>Delete A/C</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<th>${user.id}</th>
				<th>${user.username }</th>
				<th>${user.email}</th>
				<th><a class="btn btn-success"
					href="/admin/admin-postlist?mail=${user.email}">view</a></th>
				<th><a class="btn btn-danger" href="/admin/removal?email=${user.email}">Send</a></th>
				<th><a class="btn btn-danger"
					href="/admin/delete?id=${user.id}" id="deleteButton">Delete</a></th>
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>
 -->


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
					<th>Id</th>
					<th>UserName</th>
					<th>Email</th>
					<th>View</th>
					<th>Send Removal Warning</th>
					<th>Delete</th>
					<th>User Response</th>
				</tr>
			</thead>
			<c:forEach items="${users}" var="user">
				<tbody>
					<tr>
						<th>${user.id}</th>
						<th>${user.username }</th>
						<th>${user.email}</th>
						<th><a class="btn btn-success"
							href="/admin/admin-postlist?mail=${user.email}">view</a></th>
						<th><a class="btn btn-danger"
							href="/admin/removal?email=${user.email}&username=${user.username}">Send</a></th>
						<th><a class="btn btn-danger"
							href="/admin/delete?id=${user.id}" id="deleteButton">Delete</a></th>
						<!-- <th><button class="btn btn-danger" value="${user.id}" id="deleteButton">Delete</button></th> -->
						<th><a class="btn btn-success"
							href="">view</a></th>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
	<br>
</body>
</html>