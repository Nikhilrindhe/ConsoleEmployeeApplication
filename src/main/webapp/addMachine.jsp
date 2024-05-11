<%@page import="org.PetrolPump.admin.service.FuelServiceImpl"%>
<%@page import="org.PetrolPump.admin.service.FuelService"%>
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
<body onload="hidemessage()">
    <%@ include file="adminDashbord.jsp"%>
    <div class="col py-6" style="background-image: url(img/petrol_machine.jpg);
    background-size: cover;
   background-position: center;">
    
        <div class="login-div">
            <div class="login-box">
                <div class="box-field">
                <form name="frm" action="Newmachine" method="post">
                <bold><h5 id="automatic"></h5></bold>
                    <label for="name">Machine code</label>
                         <input type="text" name="machinecode" placeholder="Enter Machine code" id="username">
                            <table>
            <!-- ----------------------------------------------------------------------- -->
                        <%
                        FuelService fservice = new FuelServiceImpl();
                            List<FuelModel> list = fservice.getAllFuelTypes();
                            for(FuelModel fuel : list) {
                            %>  
                            <tr>
                            <td>
                            
                            <input type="checkbox" name="fueltype" value="<%= fuel.getId() %>"><strong><%= fuel.getName() %> </strong>
                            </td>
                            <td>
                            <input type="number" name="capacity" value="" placeholder="capacity">
                            </td>
                            </tr>
                            <% 
                            }
                        %>
                                    
                     <tr>
                     <td>
                     <input type="checkbox" id="txtcheckbox" name="checkbox">
                     <strong>Other</strong>
                     </td>
                     </tr>
                    </table>
                
                        <br>
                            <input type="submit" value="Add Machine">
                        </form>
                </div>
            </div>
        </div>
        
    </div>
    
    </div>
    </div>
    <%
    String msg = (String) request.getAttribute("addMsg");
    %>
    <%
    if(msg != null) {
    
    %>
    
    <script>
            function hidemessage() {
                var hideElement = document.getElementById("automatic");
                var originalText = hideElement.innerHTML;
                var typemessage = "<%= msg %>";
                if(typemessage) {
                    hideElement.innerHTML = typemessage;
                    setTimeout(function() {
                        hideElement.innerHTML = originalText;
                    }, 5000); // Change 5000 to 5000 milliseconds (5 seconds)
                }
            }
    </script>
    <%
    }
    %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
  
</body>
</html>
