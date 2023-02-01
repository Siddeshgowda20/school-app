<%@page import="com.js.Controller.login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	body {
		font-family: Arial, Helvetica, sans-serif;
		background-image:url("background.jpg");
		width=100%;
		height=100%;
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: 100% 100%;
		}
        h1{
        margin-left:100px;
 		margin-top:50px;
        color: white;
 		width: 200px;
        }
	#id{
 		margin-left:500px;
 		margin-top:10px;
        color: white;
 		width: 200px;
 		}
	form {
		background:absolute;
		
		 margin-top:30px;
		margin-botom:400px;
		margin-left:500px;
		margin-right:400px;
		border: 3px solid #f1f1f1;
		width:350px;
 		}
 	
	input[type=text], input[type=password] {
		width: 300px;
		padding: 12px 20px;
		margin: 8px 0;
        color: beige;
		display: inline-block;
		border: 1px solid #ccc;
		box-sizing:border-box;
        background-color: rgb(37, 37, 35);
	}

	button {
		background-color: #04AA6D;
		color: white;
		padding: 14px 20px;
		margin: 8px 0;
		border: none;
		cursor: pointer;
		width: 100%;
	}

	button:hover {
		opacity: 0.8;
	}

	.cancelbtn {
		width: auto;
		padding: 10px 18px;
		background-color: #f44336;
	}

	.container {
	padding: 16px;
	width: 320px;
    color: white;
	}

	span.psw {
	float: right;
	padding-top: 16px;
    color: black;
	}
/* 	@media screen and (max-width: 300px) { */
	span.psw {
		display: block;
		float: none;
        
	}
	.cancelbtn {
		width: 100%;
	}
	
	</style>
</head>
<body>
	<h1><u> SCHOOL_APP </u></h1>
	<h2 id="id"><u>Login Form</u></h2>

	<form action="login" method="get">

		<div class="container">
			<label for="uname"><b>User Name</b></label> 
			<input type="text" placeholder="Enter Username" name="uname" required> 
			<label for="psw"><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="psw" required>

			<button type="submit">Login</button>
		</div>

		<div class="container" style="background-color: #f1f1f1">
			<button type="button" class="cancelbtn">Cancel</button>
			<span class="psw">Forgot <a href="login.jsp">password?</a></span>
		</div>
	</form>
</body>
</html>