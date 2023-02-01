<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<style type="text/css"></style>

<style>
	body {
		font-family: Arial, Helvetica, sans-serif;
		background-attachment: scroll;
		background-image: url("register.jpg");
		background-clip: initial;
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: 100% 100%;
		}
        label{
        margin-left:25px;
 		margin-top:50px;
        color: white;
 		width: 200px;
        }
		.h{
 		margin-left:450px;
 		margin-top:15px;
        color: white;
 		width: 200px;
 		}
	.h2{
 		margin-left:700px;
 		margin-top:100px;
		align-content: center;
        color: white;
 		width: 2000px;
 		}
	input{
		width: 150px;
		padding: 5px;
		margin-top: 5px;
        color: rgb(14, 14, 8);
		display: inline-block;
		border: 1px solid #ccc;
		border-radius: 40px;
		box-sizing:border-box;
        background-color: rgb(228, 228, 220);
	}
	h5{
	width: 70px;
		padding: 5px;
		padding-left : 15px;
		align-content : center;
		margin-top: 5px;
		margin-left:100px;
        color: rgb(14, 14, 8);
		display: inline-block;
		border: 1px solid #ccc;
		border-radius: 40px;
		box-sizing:border-box;
        background-color: rgb(228, 228, 220);
	}

	form {
		background:absolute;
		 margin-top:50px;
		border: 3px solid #f1f1f1;
		width:700px;
		background-color: #6b726f;
		color: white;
		padding: 3px;
		margin-top: 20px;
		margin-left: 700px;
		border-radius: 40px;
		width: 300px;
	}
	.s{
        width: 100px;
		margin-left: 20px;
		align-content: center;
		box-shadow: #608a7a;
	}
	</style>

</head>
<body>
	<h1 class="h"><u> REGISTER_STUDENT</u></h1>
		<h2 class="h2">Enter Student Details</h2>
		<form action="register">
		<table>
		<div>
		<tr>
			<td><label for="Name">Name </label></td>
			<td><input type="text" name="name" required></td>
		</tr>
		<tr>
			<td><label for="Email">Email </label></td>
		<td><input type="email" name="email" required> </td>
		</tr>
		<tr>
			<td><label for="Age">Age </label></td>
			<td><input type="number" name="age"><td>
		<tr>
		<tr>
			<td><label for="Phone">Phone </label></td>
			<td><input type="number" name="phone"></td>
		</tr> 
		<tr>
			<td><label for="Address">Address  </label></td>
			<td><input type="text" ></td>
		</tr>
		<tr>
			<td><input type="reset" name="reset" class="s">
			<td><input type="submit" name="submit" class="s"></td>
		</tr>
		</div></table>
		<h5><a href="welcome.jsp">BACK</a></h5>
		</form>
</body>
</html>