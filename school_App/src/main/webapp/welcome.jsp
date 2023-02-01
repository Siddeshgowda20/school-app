<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>

<style>
	body {
		font-family: Arial, Helvetica, sans-serif;
		background-image:url("welcome.jpg");
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: 100% 100%;
		}
    h1{
        margin-left:400px;
 		margin-top:90px;
        color: rgb(226, 46, 55);
 		width: 200px;
        }
	h2{
        color: chartreuse;
        border: 2px solid black;
        text-decoration-color: beige;
        text-align: center;
        width: 250px; height: 40px;
        border-radius: 20px;
 		margin-left:550px;
 		margin-top:60px;
        padding-left: 15px;
        padding-top: 5px;
        padding-bottom: 10px;
        padding-right: 15px;
		border: 1px solid #ccc;
		box-sizing:border-box;
        background-color: smoke;
 		}
    .h{
        margin-top: 20px;
        }
        a:link{
		color: white;
		}
        
        a:visited{
		color: orange;
		}
        
	</style>

</head>
<body>

	<h1><u>WELCOME_TO_STUDENT_APP</u></h1>
	<h2 ><a href = register_Student.jsp> Add_Student</a>
	<h2 class="h"><a href ="view">View_All_Student</a></h2>
	<h2 class="h"><a href=login.jsp> Back</a></h2>
</body>
</html>
</body>
</html>