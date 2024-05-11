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
 background: rgb(255, 243, 245);
  }
  .info
        {
            margin-left: 40px;
            padding-right: 20px;
            margin-top: 10px;
            width: 900px;
            height: 35px;
            background-color: lightslategray;
            line-height: 35px;
           
            
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
</style>
</head>
<body>
<div class="info">
    <a href="viewprofile.jsp">View Profile</a>
    <a href="">|</a>
    <a href="">View Allocated Machine</a>
   <a href="">|</a>
     <a href="">logout</a>
   	
 </div>
</body>
</html>