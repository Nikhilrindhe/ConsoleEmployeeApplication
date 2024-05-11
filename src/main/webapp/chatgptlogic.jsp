<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
*{
	margin:0;
	padding:0;
	box-sizing:border-box;
}
.container-fluid
{

	width:100%;
	/height:100vh;/
}
/* .part1{
    background: linear-gradient(to top,rgb(231, 49, 146),purple);
    
} */
.menu{
align-items: center;
color:white;
min-height: 100vh;	

}
.menu h3{
	margin-top: 20px;
     
}
.nav{
	align-items:center;
	font-size: 20px;
	margin-top:10px;
}
.content-area{
      background-image: url("../IMAGES/dashboardbook.webp");
      background-repeat: no-repeat;
      background-position: center;
      overflow-x:hidden;
      min-height: 100vh;
      background-size: cover;
	 }
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- <link href="CSS/admindash.css" rel="stylesheet"> -->
</head>
<body>
<div class="container-fluid">
        <div class="row flex-nowrap">
            <div class="col-auto col-md-5 col-xl-2 px-sm-2 px-0"style="background: linear-gradient(to top,rgb(231, 49, 146),purple);">
            
                <div class="menu d-flex flex-column  align-items-sm-start px-3 pt-2 ">
                    
                        <center><span><h3>Menu</h3></span></center>
                    
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-sm-start mt-4" id="menu">
                        
                       <li>
                            <a href="#submenu1" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            
                                <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline">Book Shelf</span> </a>
                                <ul class="collapse nav flex-column ms-1" id="submenu1" data-bs-parent="#menu">
                                <li class="w-100">
                                    <a href="addShelf.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">Add Book Shelf</span></a>
                                </li>
                                <li class="w-100">
                                    <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">View Book Shelf</span></a>
                                </li>
                                
                            </ul>
                        </li>
         
                       <li>
                            <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            
                                <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline texr-white">Book Category</span> </a>
                                <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                                <li class="w-100">
                                    <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">Add Category</span></a>
                                </li>
                                <li class="w-100">
                                    <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">View Category</span></a>
                                </li>
                            </ul>
                        </li>
                        <a href="#submenu3" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            
                            <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline texr-white">Book Information</span> </a>
                            <ul class="collapse nav flex-column ms-1" id="submenu3" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">Add Books</span></a>
                            </li>
                            <li class="w-100">
                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">View Books</span></a>
                            </li>
                        </ul>
                    </li>
                    <a href="#submenu4" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                            
                        <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline texr-white">Student Information</span> </a>
                        <ul class="collapse nav flex-column ms-1" id="submenu4" data-bs-parent="#menu">
                        <li class="w-100">
                            <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">Add Student</span></a>
                        </li>
                        <li class="w-100">
                            <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">View Student</span></a>
                        </li>
                        <li class="w-100">
                            <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline text-white">Check Status</span></a>
                        </li>
                    </ul>
                <!-- </li>
                            <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                                <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Bootstrap</span></a>
                            <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                                <li class="w-100">
                                    <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Item</span> 1</a>
                                </li>
                                <li>
                                    <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Item</span> 2</a>
                                </li>
                            </ul>
                        </li>-->
                        
                    </ul>
                   
                    
                </div>
            </div>
            <div class="col py-3 col-sm-10 col-xl-10 content-area">
             </div>   
              
 
</body>
</html>