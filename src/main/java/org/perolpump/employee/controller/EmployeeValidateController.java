package org.perolpump.employee.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.PetrolPump.admin.service.*;

@WebServlet("/valid")
public class EmployeeValidateController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("username");
		String contact=request.getParameter("pass");
		EmployeeService eservice=new EmployeeServiceImpl();
		int res=eservice.verifyEmployee(email, contact);
		if(res!=0)
		{
			HttpSession session=request.getSession(true);
			session.setAttribute("empid", res);
			RequestDispatcher rd=request.getRequestDispatcher("employeedashbord.jsp");
			rd.forward(request, response);
		}
		else
		{
			out.println("<h1>Employee enter invalid detail</h1>");
		}
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
