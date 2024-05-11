package org.perolpump.adimin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.PetrolPump.admin.model.MachineModel;
import org.PetrolPump.admin.service.MachineService;
import org.PetrolPump.admin.service.MachineServiceImpl;

 
@WebServlet("/updmachine")
public class FainalUpdateMachine extends HttpServlet {

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		int mid=Integer.parseInt(request.getParameter("machineid"));
		String machinecode=request.getParameter("machinecode");
		

				MachineModel model=new MachineModel();
				model.setId(mid);
				model.setMachinecode(machinecode);
				
				MachineService mservice=new MachineServiceImpl();
				boolean b=mservice.isUpdateMachine(model);
				if (b)
				{
					RequestDispatcher rs=request.getRequestDispatcher("viewmachine.jsp");
					rs.forward(request, response);
					
				}
				else
				{
					out.println("<h1>machine data not updated</h1>");
				}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
