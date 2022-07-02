<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>


body {background-color: #996633;}
td {
  text-align: center;
}
tr:hover {background-color: #cc9900;}
/* tr:nth-child(even) {background-color: #f2f2f2;} */
th {
  background-color: #009900;
  color: white;
}

div.form
{
    display: block;
    text-align: center;
}
form
{
    display: inline-block;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
}

</style>
<script>

function cancel(){
	window.open("welcome.jsp")
	}
	
function update(){
	console.log("i am here now")
	try{
	var password = document.getElementById("newpassword").value;
	var name = document.getElementById("newname").value;
	console.log(password);
	console.log(name);
	
	if(!password){
		console.log(password);
		alert('Please enter the password');
		return false;
	}
	if(!name){
		console.log(name);
		alert('Please enter the name');
		return false;
	}
	}
	catch(e){
		console.log(e);
	}
	document.forms[0].action= "edit";
	document.forms[0].method= 'post';
	document.forms[0].submit();
	 
}	

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action=edit method="post"> 

	<table>
	
		<tr>
			<td>
				<h1 style="color:#000000;">Update</h1>
			</td>
			
		</tr>
		<tr>
			<td>ID</td><td><input type="text" readonly name="id"  value = "${id}" required><br>
			</td>
		</tr>
		<tr>
			<td>USERNAME</td><td><input type="text" readonly name="usrname" value = "${usr}"  required><br>
			</td>
		</tr>
		<tr>
			<td>PASSWORD</td><td><input type="password" name="newpassword" value = "${pswd}" id="newpassword" required><br>
			</td>
		</tr>
		<tr>
			<td>NAME</td><td><input type="text" name="newname" value= "${name}" id="newname" required><br>
			<tr><td><button type=button onclick="update()">Update</button></td></tr>
			<tr> <td><button type="button" onclick= "cancel()">Cancel</button></td></tr>
		
	</table>
	</form>
</body>
</html>