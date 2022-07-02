<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<script>
	function Update(id, usr, pswd, name) {
		try {
			document.forms[0].custId.value = id;
			document.forms[0].username.value = usr;
			document.forms[0].paswrd.value = pswd;
			document.forms[0].name.value = name;
			document.forms[0].action = "update";
			document.forms[0].method = 'post';
			document.forms[0].submit();
		} catch (e) {
			console.log(e);
		}
	}
	
	function Delete(id, usr, pswd, name) {
		try {
			document.forms[0].custId.value = id;
			console.log(id);
			document.forms[0].action = "delete";
			document.forms[0].method = 'post';
			document.forms[0].submit();
		} catch (e) {
			console.log(e);
		}
	}
	
</script>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<style>
table, th, td {
	border: 1px solid;
	border-collapse: collapse;
}

body {
	background-color: #8cd98c;
}

td {
	text-align: center;
}

tr:hover {
	background-color: coral;
}
/* tr:nth-child(even) {background-color: #f2f2f2;} */
th {
	background-color: #009900;
	color: white;
}
</style>
<body>

	<form id="updatepage">


		<%
		try {
			DriverManager.registerDriver(new org.apache.derby.jdbc.EmbeddedDriver());
		} catch (Exception e) {
			e.printStackTrace();
		}

		Connection connection = null;
		Statement statement = null;
		ResultSet resultset = null;
		%>

		<table>
			<tr>
				<h3 style="color: black;">Hi ${message2}, Welcome to the
					Database</h3>
				<h3 style="color: green;">${success1message}</h3>
			</tr>
			<tr>


				<th>ID &nbsp;</th>
				<th>USERNAME &nbsp;</th>
				<th>PASSWORD &nbsp;</th>
				<th>NAME &nbsp;</th>
				<th>EDIT &nbsp;</th>
			</tr>


			<%
			try {
				connection = DriverManager.getConnection("jdbc:derby:/Users/nid/MyDB;create=true;upgrade=true", "nidhin",
				"nidhin123");

				statement = connection.createStatement();
				String sql = "select * from employee1";

				resultset = statement.executeQuery(sql);
				while (resultset.next()) {
			%>



			<tr>
				<td><%=resultset.getString("ID")%></td>
				<td><%=resultset.getString("USERNAME")%></td>
				<td><%=resultset.getString("PASSWORD")%></td>
				<td><%=resultset.getString("NAME")%></td>
				<td><button type="button"
						onclick="Update('<%=resultset.getString("ID")%>','<%=resultset.getString("USERNAME")%>','<%=resultset.getString("PASSWORD")%>','<%=resultset.getString("NAME")%>')">Update</button>
						<button type="button" onclick="Delete('<%=resultset.getString("ID")%>')">Delete</button></td>
			</tr>

			<%
			}
			connection.close();

			} catch (Exception e) {
			e.printStackTrace();

			}
			%>


		</table>
		<input type="hidden" id="custId" name="custId"> <input
			type="hidden" id="paswrd" name="paswrd"> <input type="hidden"
			id="username" name="username"> <input type="hidden" id="name"
			name="name">

	</form>
</body>
</html>