<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>


body {background-color: #7575a3;}
td {
  text-align: center;
}
tr:hover {background-color: #ccffcc;}

</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="loginRegister" method ="post">
	
		<table style="background-color: #adadeb; margin-left: 20px;">
		<tr><td><h3>${message1}</h3>
		<h3>${successmessage}</h3>
		<td></td>
		</tr>
			<th>
				<h3 style="color: black">Login Page</h3>
			</th>
			<tr>
				<td>UserName :</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password1"></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="login"></td>
				<td><a href="register.jsp">Registration</a>
			</tr>

		</table>

	</form>
</body>
</html>