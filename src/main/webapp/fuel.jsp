<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="StyleSheet" href="css/addMachine.css">
</head>
<body>

<%@ include file="adminDashbord.jsp"%>
	<div class="col py-6" style="background-image: url(img/petrol_machine.jpg);
    background-size: cover;
   background-position: center;">
	
		<div class="login-div">
			<div class="login-box">
				<div class="box-field">
				<form name="frm" action="addfueltype" method="post">
					<label for="name">Fuel Type</label>
						 <input type="text" name="fuelname" placeholder="Enter fuelname" id="username">
							
			<!-- -------------------------------------------------------------
			
							<strong>Petrol  </strong>
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
           				 ---------- -->
           				
							<input type="submit" value="Add Fuel Type">
						</form>
				</div>
			</div>
		</div>
		
	</div>
	
	</div>
	</div>
</body>
</html>