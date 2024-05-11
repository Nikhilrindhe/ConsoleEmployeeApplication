package org.perolpump.adimin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PetrolPump.admin.model.FuelModel;
import org.PetrolPump.admin.service.FuelService;
import org.PetrolPump.admin.service.FuelServiceImpl;


@WebServlet("/addfueltype")
public class AddfuelTypeController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("fuelname");
		FuelModel model=new FuelModel();
		model.setName(name);
		FuelService fservice=new FuelServiceImpl();
		boolean b=fservice.isAddFuelType(model);
		if(b)
		{
			RequestDispatcher rs=request.getRequestDispatcher("adminDashbord.jsp");
			rs.include(request, response);
			out.println("<center><h1>Fuel Type Added Successfully</h1></center>");
			}
		else {
			out.println("<center><h1>Fuel type not Added</h1></center>");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
