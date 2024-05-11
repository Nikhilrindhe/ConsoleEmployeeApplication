
<%@page import="org.PetrolPump.admin.service.*,org.PetrolPump.admin.model.*,java.util.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/viewMachine.css" rel="stylesheet">
</head>
<body>
	
		<% 
		FuelService fservice=new FuelServiceImpl();
		
		%>
		<%@ include file="adminDashbord.jsp"%>
	<div class="col py-6">
	<div class='row'>
	<div class='tt1 col-md-6'>
	<div class="login-box">
		<table class="table table-info">
		<thead>
    <h1>Fuel Type Details</h1>
  </thead>
  <thead>
    <tr class="table table-dark">
      <th scope="col">sr.no</th>
      <th scope="col">Fuel Type</th>
      <th scope="col">Delete</th>
      <th scope="col">Update</th>
      
    </tr>
  </thead>
  
  <% 
  List <FuelModel>list=fservice.getAllFuelTypes();
 if(list!=null)
  {
	  
  int count=0;
  	for(FuelModel f:list)
  	{
  		
  %>	
  	
    <tr>
      <th scope="row"><%= ++count %></th>
      <td><%= f.getName() %></td>
      <td><a href='delfuel?fid=<%=f.getId()%>'><img src="img/delete.icon.png" alt="delete icon" width="30" height="30" class="rounded-circle"></a></td>
       <td><a href='#'><img src="img/update_icon.png" alt="hugenerd" width="30" height="30" class="rounded-circle"></a></a>
       </td>
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
        
    </tr>
    
     <tr>
      <th scope="row">2</th>
      <td></td>
      <td></td>
       <td></td>
    </tr>
    <caption><h3>Empty ...!</h3></caption>
  
    <caption><h4><a href='fuel.jsp'>add fueltype</a></h4></caption>
    <% 
  }
  %>
  </tbody>
</table>
</div>
</div>
</div>
	</div>
	
	</div>
	</div>
	
</body>
</html>