<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hindustan Petrolium Mohadi</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="StyleSheet" href="css/dashbord.css">
</head>
<body>


	<div class="container-fluid" style="background-image: url(img/petrol-station2.jpg);
    background-size: cover;
    background-position: center;">
		<div class="row flex-nowrap">
		 <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-secondary">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
            <div class="image">
            <img src="https://zeevector.com/wp-content/uploads/2021/02/HP-Gas-Logo-PNG-VECTOR.png" alt="hugenerd" width="120" height="70" class="rounde">
            </div>
              <div class="pb-4">
    <ul class="list-unstyled text-small shadow">
        <li>
            <a href="#" class="nav-link px-0" data-bs-toggle="collapse" data-bs-target="#machineMaster">
                <i class="fs-4 bi-speedometer2"></i> <span class="ms-1 d-none d-sm-inline text-white">Machine Master</span>
            </a>
            <ul class="collapse nav flex-column ms-1" id="machineMaster">
                <li>
                    <a href="addMachine.jsp" class="nav-link px-0">
                        <span class="d-none d-sm-inline text-primary">Add New Machine</span>
                    </a>
                </li>
                <li>
                    <a href="viewmachine.jsp" class="nav-link px-0">
                        <span class="d-none d-sm-inline text-primary">View machine</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="nav-link px-0" data-bs-toggle="collapse" data-bs-target="#fuelMaster">
                <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline text-white">Fuel Master</span>
            </a>
            <ul class="collapse nav flex-column ms-1" id="fuelMaster">
                <li>
                    <a href="fuel.jsp" class="nav-link px-0">
                        <span class="d-none d-sm-inline text-primary">Add Fuel type</span>
                    </a>
                </li>
                <li>
                    <a href="viewfueltype.jsp" class="nav-link px-0">
                        <span class="d-none d-sm-inline text-primary">View Fuel Type</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" class="nav-link px-0" data-bs-toggle="collapse" data-bs-target="#employeeMaster">
                <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline text-white">Employee Master</span>
            </a>
            <ul class="collapse nav flex-column ms-1" id="employeeMaster">
                <li>
                    <a href="addnewemployee.jsp" class="nav-link px-0">
                        <span class="d-none d-sm-inline text-primary">Add Employee</span>
                    </a>
                </li>
                <li>
                    <a href="viewemployee.jsp" class="nav-link px-0">
                        <span class="d-none d-sm-inline text-primary">View Employee</span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</div>

                <hr>
              
            </div>
        </div>
        
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      
</body>
</html>