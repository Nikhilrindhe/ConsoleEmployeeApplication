<%@page import="org.PetrolPump.admin.service.*,java.util.*,org.PetrolPump.admin.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String search=request.getParameter("s");
%>
		<table class="table table-info">
		<thead>
    <h1>Employee Details</h1>
  </thead>
  <thead>
    <tr class="table table-dark">
      <th scope="col">sr.no</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">Address</th>
      <th scope="col">Allocate MAchine</th>
      <th scope="col">Delete</th>
      <th scope="col">Update</a></th>
      
    </tr>
  </thead>

<%
	EmployeeService eservice=new EmployeeServiceImpl();
				List<EmployeeModel>list= eservice.getAllSearchEmp(search);
				if(list!=null)
		  		{
		  			int count=0;
		  		for(EmployeeModel e:list)
		  		{  			
		  %>	
		  		<tr>
		  			<th scope="row"><%= ++count %></th>
		  			<td><%= e.getName() %></td>
		  			<td><%= e.getEmail()%></td>
		  			<td><%= e.getContact()%></td>
		  			<td><%= e.getAddress()%></td>
		  			<td><a href='AllocateMachnetoEmployee.jsp?empid=<%= e.getId() %>&empname=<%= e.getName() %>'>allocate Machine</a></td>
		  			<td><a href="#"><img src="img/delete.icon.png" alt="delete icon" width="30" height="30" class="rounded-circle"></a></td>
		  			<td><a href='#'><img src="img/update_icon.png" alt="hugenerd" width="30" height="30" class="rounded-circle"></td>
		  		</tr>
		  <%
		  		}
		  		}
		  		else
		  		{
		  			
		  	 %>
		  	<tr>
		  	<th scope="row">1</th>
		  	<td></td>
		  	<td></td>
		  	<td></td>
		  	<td></td>
		  	<td></td>
		  	<td></td>
		  	<td></td>
		  	</tr>
		    <caption><h3>Empty ...!</h3></caption>
		  
		    <caption><h4><a href='addnewemployee.jsp'>add employee</a></h4></caption>
		    <% 
		  }
		  		%>
		  </tbody>
		</table>
</body>
</html>