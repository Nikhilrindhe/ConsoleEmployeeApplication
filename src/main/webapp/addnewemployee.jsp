<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="org.PetrolPump.admin.model.*,org.PetrolPump.admin.service.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="StyleSheet" href="css/addMachine.css">
</head>
<body onload="hideMessage()">
	<%@ include file="adminDashbord.jsp"%>
	<div class="col py-6" style="background-image: url(img/petrol_machine.jpg);
    background-size: cover;
   background-position: center;">
		
		
		<div class="login-div">
			<div class="login-box">
				<div class="box-field">
				
				<form name="frm" action="newemployee" method="post">
				<bold><h5 id="atomatic"></h5></bold>
					<label for="name">Employee name</label>
						 <input type="text" name="name" placeholder="nikhil" id="username">
						 
					<label for="email">Enter email</label>
						 <input type="text" name="email" placeholder="nikhil@gmail.com" id="username">
					
					<label for="contact">Enter Contact</label>
						 <input type="number" name="contact" placeholder="561123544" id="username">
				
					<label for="address">Enter Address</label>
						 <input type="text" name="address" placeholder="pune" id="username">
					
					<label for="sal">Employee salary</label>
						 <input type="text" name="sal" placeholder="10000" id="username">
					
			<!-- ----------------------------------------------------------------------- -->
						<br>
							<input type="submit" value="Add Employee">
						</form>
				</div>
			</div>
		</div>
		
	</div>
	
	</div>
	</div>
	<% String msg=(String) request.getAttribute("addMsg");
	%>
	<% if(msg!=null) {
	
		%>
		<script>
                                function hideMessage() {
                                    var headerElement = document.getElementById("atomatic");
                                    var originalHeaderText = headerElement.innerHTML;
                                    var typemessage = "<%= msg %>";
                                    if (typemessage) {
                                        headerElement.innerHTML = typemessage;
                                        setTimeout(function() {
                                            headerElement.innerHTML = originalHeaderText;
                                        }, 5000); // Change 3000 to 3000 milliseconds (3 seconds)
                                    }
                                }
                            </script>
		<% 
	}
	%>
			
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      
</body>
</html>