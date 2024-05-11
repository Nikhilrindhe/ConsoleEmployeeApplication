<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*
  {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
  }
  body
  {
 background: #D8BFD8;
  }
  .info
        {
            padding-right: 20px;
            width: 100%;
            height: 60px;
            background-color: lightslategray;
            line-height: 60px;
            
        }
        .info a
        {
            color: black;
            text-decoration: none;
            text-align:right;
            padding: 40px;
        }
        .info a:hover
        {
        color:blue;
        background:transparent;
        }
        
        .login-box
        {
        width:400px;
        height:350px;
        border: 2px solid black;
        margin:auto;
        margin-top:120px;
        border-left: 0;
        border-right: 0;
        border-width: 10px;
        background: rgb(255, 243, 245);
        border-radius:25px;
        }
        .admin
        {
        width:80%;
        margin:auto;
        }
        .employee
        {
        width:80%;
        margin: auto;
        }
        strong
        {
        width:100%;
        margin: 20px;
         padding:20px;
         font-size:27px;
        line-height:45px;
        }
        button
        {
        width:100%;
        padding: 20px;
        margin-top:20px;
        }
        .space
        {
        width:100%;
        height: 5px;
        background-color: black;
        margin-top:20px;
        }
        a{
         font-size:20px;
        }
        button:hover
        {
        background: lightslategray;
        }
</style>
</head>
<body>
	<div class="info">
    <a href="Mainpage.jsp">HOME</a>
    <a href="">|</a>
    <a href="#">ABOUT</a>
   <a href="">|</a>
     <a href="#">CONTACT US</a>
      <a href="">|</a>
     <a href="Mainpage.jsp">LOGIN</a>
      </div>
        
        <div class="login-box">
        <div class="admin">
       
        <strong>Login For Admin</strong>
        <button><a href="adminlogin.jsp">click here</a></button>
        </div>
        <div class="employee">
         <div class="space"></div>
        <strong>Login For Employee</strong>
       <button> <a href="employeelogin.jsp">click here</a></button>
      
        </div>
    </div>
   	
 </div>
</body>
</html>