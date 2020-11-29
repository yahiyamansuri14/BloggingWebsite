<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>POST'S</title>
</head>
<body>
	<c:forEach items="${allpost}" var="post">
		<hr>
		<p>${post.createdon }</p>
		<p>${post.title }</p>
		<p>${post.content }</p>
		<hr>
	</c:forEach>
</body>
</html>