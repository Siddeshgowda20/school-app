<%@page import="com.js.dto.student"%>
<%@page import="com.js.Controller.viewAllStudent"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display All the Students</title>

<style type="text/css">
	body {
	background-image: url('view.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	text-align: center;
	}
	th{
	color: Orange;
	justify-content: center;
	margin-top: 150;
	margin-left: auto;
	margin-right: auto;
	border-radius: 5px;
	}
	 td {
	justify-content: center;
	margin-top: 150;
	margin-left: auto;
	margin-right: auto;
	border-radius: 5px;
	color: White;
	}

	table {
	margin-left: 200px;
	margin-right: auto;
	margin-top: auto;
	margin-bottom: auto;
	border: 5px solid grey;
	border-radius:15px;
	}

	h1 {
	background-color: grey;
	font-size: 35px;
	display: flex;
	flex-direction: column;
	align-items: auto;
	justify-content: center;
	margin-top: 150;
	margin-left: 300px;
	margin-right: auto;
	border-radius: 25px;
	color: highlighttext;
	text-shadow: 2px 2px 2px;
	width: 400px;
	height: 90px;
	}

	h3 {
	border: 2px solid grey;
	border-radius: 25px;
	color: White;
	width: 100px;
	margin-top: 150;
	margin-left: 500px;
	margin-right: 200px;
	}

	a:link {
	color: White;
	}

	a:visited {
	color:yellow;
	}
</style>
</head>
<body>

	<h1>STUDENT DETAILS</h1>
	<table border="3px" cellSpacing="20px" padding="5px">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Age</th>
			<th>Phone</th>
			<th>Address</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>

		<%
		List<student> students = (List) request.getAttribute("list");
		for (student s : students) {
		%>
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getName()%></td>
			<td><%=s.getEmail()%></td>
			<td><%=s.getAge()%></td>
			<td><%=s.getPhone()%></td>
			<td><%=s.getAddress()%></td>
			<!--  delete?id == Query string -->
			<td><a href="delete?id=<%=s.getId()%>"> Delete</a></td>
			<td><a href="update?id=<%=s.getId()%>">Update</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<h3>
		<a href="welcome.jsp">HOME</a>
	</h3>
</body>
</html>