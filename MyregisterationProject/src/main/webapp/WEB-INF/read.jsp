<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% String table = (String) request.getAttribute("table"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to the data base</title>
</head>
<body>
<h1>Welcome to the database</h1>
<%= table %> 
</body>
</html>