<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="org.PetrolPump.admin.service.*,java.util.*,org.PetrolPump.admin.model.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/viewMachine.css" rel="stylesheet">
</head>
<body>

	<% 
	MachineService mservice=new MachineServiceImpl();
	%>
	<%@ include file="adminDashbord.jsp"%>
	<div class="col py-6">
	<div class='row'>
	<div class='tt1 col-md-6'>
	<div class="login-box">
		<table class="table table-info">
		<thead>
    <h1>Machine Details</h1>
  </thead>
  <thead>
    <tr class="table table-dark">
      <th scope="col">sr.no</th>
      <th scope="col">Machine Code</th>
      <th scope="col">Fuel Type</th>
      <th scope="col">capacity</th>
      <th scope="col">Delete</th>
      <th scope="col">Update</th>
      
    </tr>
  </thead>
  
  <% 
  List <Object[]> list=mservice.getAllMachines();
 // boolean b=list.isEmpty();
 if(list!=null)
  {
	  
  int count=0;
  	for(Object []obj:list)
  	{
  		
  %>	
  	
    <tr>
      <th scope="row"><%= ++count %></th>
      <td><%= obj[0]%></td>
      <td><%= obj[1]%></td>
      <td><%= obj[2]%></td>
      <td><a href='del?machineid=<%=(int)obj[3]%>'><img src="img/delete.icon.png" alt="delete icon" width="30" height="30" class="rounded-circle"></a></td>
       <td><a href='updatemachine.jsp?mid=<%=(int)obj[3]%>&mcode=<%=obj[0]%>'><img src="img/update_icon.png" alt="hugenerd" width="30" height="30" class="rounded-circle"></a>
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
        <td></td>
         <td></td>
    </tr>
    
     <tr>
      <th scope="row">2</th>
      <td></td>
      <td></td>
       <td></td>
        <td></td>
         <td></td>
    </tr>
    <caption><h3>Empty ...!</h3></caption>
  
    <caption><h4><a href='addMachine.jsp'>add machine</a></h4></caption>
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