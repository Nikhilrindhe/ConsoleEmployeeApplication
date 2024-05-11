package org.perolpump.adimin.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.PetrolPump.admin.service.*;
import java.io.*;


@WebServlet("/delfuel")
public class DeleteFuelController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int fuelid=Integer.parseInt(request.getParameter("fid"));
		FuelService fservice=new FuelServiceImpl();
		boolean b=fservice.isDeleteFuelType(fuelid);
		if(b)
		{
			RequestDispatcher rd=request.getRequestDispatcher("viewfueltype.jsp");
			rd.include(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
