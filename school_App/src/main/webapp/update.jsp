<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update student</title>

<style>
.tit {
	font-size: 30px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	margin-top: 200px;
	margin-left: 550px;
	background-color: azure;
	color: black;
	width: 400px;
	height: 50px;
}

.form {
	margin-top: 5px;
	height: 200px;
	width: 400px;
	margin-left: 550px;
	margin-top: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
}
</style>
</head>
<body>
	<h1>ENTER STUDENT DETAILS TO UPDATE</h1>
		<form action="update" method="get">
		<table>
		Name : <input type="text" name="name"> <br><br>
		Email : <input type="email" name="email"> <br> <br>
		Age : <input type="number" name="age"> <br><br>
		Phone : <input type="number" name="phone"> <br><br>
		Address : <input type="text" name="address"> <br><br>    
		<input type="submit" name="Update">
		</table>
		<h3><a href="welcom.jsp">BACK</a></h3>
		</form>
</body>
</html> 