<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.PetrolPump.admin.service.*,java.util.*,org.PetrolPump.admin.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--
<style>
.login-div {
	width: 80vw;
	height: 100vh;
	display: flex;
	background-image: url(petrol_machine.jpg);
    background-size: cover;
   background-position: center;
   padding-left:480px;
}

.login-box {

	width: 380px;
	height: 500px;
	border: 2px solid rgb(33, 32, 32);
	border-left: 0;
	border-right: 0;
	border-radius: 25px;
	border-width: 8px;
	box-shadow: 4px 15px 4px rgb(235, 245, 251);
	background: #E6E6FA;
	margin:auto;	
}


.login-box .box-field {
	width: 280px;
	height: 410px;
	margin: auto;
	padding: 10px;
	
}

label {
	width: 100%;
	color: rgb(37, 35, 35);
	font-size: 25px;
	padding: 5px;
}

input[type=text] {
	width: 100%;
	padding: 10px;
	font-size: 15px;
	border: none;
	outline: none;
	border-bottom: 4px solid rgb(33, 32, 32);
	margin-top: 5px;
	border-radius: 10px;
	background-color: rgba(194, 193, 193, 0.4);
}

input[type=text]::placeholder {
	width: 80%;
	color: rgb(0, 0, 0);
}

input[type=submit] {
	width: 70%;
	padding: 10px;
	margin-top: 15px;
	border: none;
	border-top-right-radius: 30px;
	border-bottom-left-radius: 30px;
	font-size: 18px;
	font-weight: bold;
	margin-left: 50px;
	background: black;
	color: aliceblue;
}

input[type=submit]:hover {
	border-top-left-radius: 30px;
	border-bottom-right-radius: 30px;
	cursor: pointer;
	background: rgb(109, 104, 104);
	color: #1f1e1e;
}
input[type=checkbox]{
	width:30px;
	height:40px;
	padding:5px;
}
</style>
--->
<link rel="StyleSheet" href="css/addMachine.css">
</head>
<body>


<%@ include file="adminDashbord.jsp"%>
<%!
int mid;
String machinecode;
%>
	<div class="col py-6">
	
		<div class="login-div">
			<div class="login-box">
				<div class="box-field">
				<form name="frm" action="updmachine" method="post">
					<%
					mid=Integer.parseInt(request.getParameter("mid"));
					machinecode=request.getParameter("mcode");
					%>
						<input type='hidden' name='machineid' value=<%= mid%> class='control'>
						<label for='name'>Machine code</label>
						<input type='text' name='machinecode' value=<%= machinecode%> class='control'>
						
							<br>
			<!-- ----------------------------------------------------------------------- -->
						<!-- 	<strong>Petrol  </strong>
							<input type="checkbox" id="txtcheckbox" name="checkbox"> 
							<br>
							<strong>Normal Diesel</strong>
							<input type="checkbox" id="txtcheckbox" name="checkbox">
					
							<br>
							<strong>Bio-Diesel</strong>
							<input type="checkbox" id="txtcheckbox" name="checkbox"> 
							<br>
							<strong>CNG</strong>
							<input type="checkbox" id="txtcheckbox" name="checkbox">
							<br>          				
           				 <strong>Other</strong>
           				 <input type="checkbox" id="txtcheckbox" name="checkbox">
           				
       				
						<br><br>
						 -->
							<input type="submit" name="s" value="Update Code">
						</form>
				</div>
			</div>
		</div>
		
	</div>
	
	</div>
	</div>

</body>
</html>