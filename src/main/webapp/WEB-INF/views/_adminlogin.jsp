<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Login-JSP</title>
</head>
<body>
	<h3>${MESSAGE}</h3>
	<pre>
	 <form action="/admin/login" method="post">
	 	Email::<input type="email" name="adminemail" />
	 	Secure Key::<input type="password" name="securekey" />
	 	Pwd::<input type="password" name="adminpwd" />
	 	<input type="submit" /> 
	 </form>
	 </pre>
</body>
</html>