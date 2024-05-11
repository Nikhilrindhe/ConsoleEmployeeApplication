package org.perolpump.adimin.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PetrolPump.admin.model.MachineModel;
import org.PetrolPump.admin.service.MachineService;
import org.PetrolPump.admin.service.MachineServiceImpl;

import java.sql.*;

@WebServlet("/Newmachine")
public class MachineController extends HttpServlet {
	MachineService ms = new MachineServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String machinecode=request.getParameter("machinecode");
		String ftype[]=request.getParameterValues("fueltype");
		String capArray[]=request.getParameterValues("capacity");
		MachineModel model=new MachineModel();
		model.setMachinecode(machinecode);
			boolean b=ms.isAddNewMachine(model,ftype,capArray);

			if(b)
			{
				request.setAttribute("addMsg", "Machine Added");
				
			}
			else
			{
				request.setAttribute("addMsg", "Machine Not Added");
			}
			RequestDispatcher rd = request.getRequestDispatcher("addMachine.jsp");
	        rd.forward(request, response);
				
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
