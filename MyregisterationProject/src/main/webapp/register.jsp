<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>


body {background-color: #ccffcc;}
td {
  text-align: center;
}
tr:hover {background-color: #ffcccc;}
/* tr:nth-child(even) {background-color: #f2f2f2;} */



</style>

<script>
	function Register(){
		try {
			
			var username = document.getElementById("username").value;
			var name = document.getElementById("name").value;
			var password1 = document.getElementById("password1").value;
			var password2 = document.getElementById("password2").value;
			
			if(!username){
				console.log(username);
				alert('Please Enter User Name');
				return false;
			}
			if(!name){
				console.log(name);
				alert('please Enter Name');
				return false;
			}
			if(!password1){
				console.log(password1);
				alert('please Enter password');
				return false;
			}
			if(!password2){
				console.log(password2);
				alert('please EnterRetype Password');
				return false;
			}	
		} catch (e) {
			console.log(e);
		}
		document.forms[0].action= "register";
		document.forms[0].method= 'post';
		document.forms[0].submit();
		
		/* let usr =(document.forms[0].username.value);
		let nm =(document.forms[0].name.value);
		let pswd1 =(document.forms[0].password1.value);
		let pswd2 =(document.forms[0].password2.value);
		
		if(usr&&nm&&pswd1&&pswd2){
			console.log("nidhin");
			/* let register = "register";
			document.forms[0].submit.value = register; */
			/* console.log(register); 
			document.forms[0].action= "register";
			document.forms[0].method= 'post';
			document.forms[0].submit();
			
		}
		else {
			console.log("varghese");
			document.forms[0].action= "register";
			document.forms[0].method= 'post';
			document.forms[0].submit();
		}
		console.log("hi hello")	 */	
		
		
		
	}

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="register" method="post">
		<table style="background-color: lightgreen; margin-left: 20px;">
		<tr><td>${message5}</td></tr>
		<tr><td><h3>${mismatchmessage}</h3></td></tr>
			<tr>
				<td><h3 style="color: black">Registration Page</h3></td>
			</tr>
			<tr>
				<td>UserName :</td>
				<td><input type="text" name="username" value="${username}" id="username"></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" value="${name}" id = "name"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password1" id = "password1"></td>
			</tr>
			<tr>
				<td>Re-type Password :</td>
				<td><input type="password" name="password2" id="password2"></td>
				
			</tr>
			<tr>
				<!-- <td><input type="submit" name="submit" value="register"></td> -->
				<td><button type="button" onclick= "Register()">register</button></td>

			</tr>

		</table>
<!-- <!-- <input type="hidden" id="submit" name="register">  --> 


	</form>
</body>
</html>