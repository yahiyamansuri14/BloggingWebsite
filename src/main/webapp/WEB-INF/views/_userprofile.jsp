<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User-Profile</title>
</head>
<body>
  <h1><a href="/user/showprofile?${usermail}">show-profile</a></h1>
	<table border="2px solid red">
		<tr>
			<th>SR-NO</th>
			<th>Title</th>
			<th>date</th>
			<th><a href="/user/editpost">Edit</a></th>
			<th><a href="/user/deletepost">delete</a></th>
		</tr>
	</table>
</body>
</html>