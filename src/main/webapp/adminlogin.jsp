<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/employeelogin.css"/>
</head>

<body>
	<div class="login-div">
        
        <div class="login-box">
             <h2>Admin Login</h2>
            <div class="HeadLine"></div>
            <div class="box-field">
                <form name="frm" action="validuser" method="post">
                    <label for="username">Username</label>
                    <input type="text" name="username" placeholder="Enter email as username" id="username">
                    <br><br>
                    <label for="pass">Password</label>
                    <input type="text" name="pass" placeholder="Enter contact as Password" id="pass">
                    <br><br><br>
                    <a href="#" class="a1">Forget Password ?</a>
                    <a href="register.html" class="a2">Register</a>
                    <br><br>
                    <input type="submit" name='s' value="Login">
                    <br> 
                </form>
            </div>
        </div>
        
    </div>
</body>
</html>