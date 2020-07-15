<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
<% session.invalidate(); %>
<h2 style="text-align: center">You have been successfully logout...</h2>

<h3>Click here for home page..!!!</h3>
<a href="index.html">Home Page</a>
</body>
</html>