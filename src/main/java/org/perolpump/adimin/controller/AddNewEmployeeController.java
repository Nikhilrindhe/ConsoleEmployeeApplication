package org.perolpump.adimin.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import org.PetrolPump.admin.service.*;
import org.PetrolPump.admin.model.*;
@WebServlet("/newemployee")
public class AddNewEmployeeController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		int sal=Integer.parseInt(request.getParameter("sal"));
		EmployeeModel emodel=new EmployeeModel(name,email,contact,address,sal);
		EmployeeService eservice=new EmployeeServiceImpl();
		boolean b=eservice.isAddNewEmployee(emodel);
		if(b)
		{
			request.setAttribute("addMsg", "Employee Added");
			
		}
		else
		{
			request.setAttribute("addMsg", "Employee Not Added");
		}
		RequestDispatcher rd = request.getRequestDispatcher("addnewemployee.jsp");
        rd.forward(request, response);
			}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
