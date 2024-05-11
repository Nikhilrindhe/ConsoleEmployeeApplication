package org.perolpump.adimin.controller;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.*;
import javax.servlet.http.*;

import org.PetrolPump.admin.service.*;


@WebServlet("/fainalmachineallocate")
public class FainalMachineAllocateController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int employeeId=Integer.parseInt(request.getParameter("empid"));
		int machineId=Integer.parseInt(request.getParameter("mid"));
		String starttime=request.getParameter("startTime");
		String endtime=request.getParameter("endTime");
		String date=request.getParameter("alldate");
		
		EmployeeService eservice=new EmployeeServiceImpl();
		boolean b=eservice.allocateMachine(employeeId, machineId, starttime,endtime,date);
		if(b)
		{
			RequestDispatcher rd=request.getRequestDispatcher("adminDashbord.jsp");
			rd.include(request, response);
			out.println("<center><h1>machine Allocate successfully to the employee</h1></center>");
		}
		else {
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
