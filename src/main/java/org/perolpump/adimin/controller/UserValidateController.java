package org.perolpump.adimin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.PetrolPump.admin.service.*;
import org.PetrolPump.admin.service.EmployeeService;
import org.PetrolPump.admin.service.EmployeeServiceImpl;

/**
 * Servlet implementation class UserValidateController
 */
@WebServlet("/validuser")
public class UserValidateController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("username");
		String contact=request.getParameter("pass");
		
		AdminService aservice=new AdminServiceImpl();
		boolean b=aservice.isverifyadmin(email, contact);
		if(b)
		{
			RequestDispatcher rd=request.getRequestDispatcher("adminDashbord.jsp");
			rd.forward(request, response);
		}
//		EmployeeService eservice=new EmployeeServiceImpl();
//		
//		int res=eservice.verifyEmployee(email, contact);
//		if(res!=0)
//		{
//			RequestDispatcher rd=request.getRequestDispatcher("employeedashbord.jsp");
//			rd.forward(request, response);
//		}
//		else
		{
			out.println("<h1>Enter valid detail</h1>");
		}
		
			}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
