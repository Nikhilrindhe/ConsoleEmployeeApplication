
<%@page import="org.PetrolPump.admin.service.*,java.util.*,org.PetrolPump.admin.model.*"%>
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
<%!
int eid;
String empname;
%>
	<div class="col py-6">
	
		<div class="login-div">
			<div class="login-box">
				<div class="box-field">
				
					<%
					eid=Integer.parseInt(request.getParameter("empid"));
					empname=request.getParameter("empname");
					MachineService mservice=new MachineServiceImpl();
					List <MachineModel> list=mservice.allMachineDetails();
					
					%>
					<h3>Kindly allocate Machine to  <strong><%=empname %></strong></h3>
					<form name="frm" action="fainalmachineallocate" method="post">
					<input type='hidden' name='empid' value='<%= eid%>' class='control'>
				<select name="mid" class='control'>
				<option>select Machine</option>
				<%
					for(MachineModel m:list)
					{
				%>
				
				<option value='<%= m.getId()%>'><%= m.getMachinecode()%></option>
					<%
					}
					%>
				</select>
						
						<label for='name'>start time</label>
						<input type='time' name='startTime' value='' class='control'>
						<label for='time'>End time</label>
						<input type='time' name='endTime' value='' class='control'>
						<label for='date'>Date</label>
						<input type='date' name='alldate' value='' class='control'>
							<br>
							<input type="submit" name="s" value="Allocate machine">
						</form>
				</div>
			</div>
		</div>
		
	</div>
	
	</div>
	</div>
							
</body>
</html>