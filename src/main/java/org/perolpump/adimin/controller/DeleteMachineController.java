package org.perolpump.adimin.controller;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import org.PetrolPump.admin.service.MachineService;
import org.PetrolPump.admin.service.MachineServiceImpl;

import java.io.*;
@WebServlet("/del")
public class DeleteMachineController extends HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		int id=Integer.parseInt(req.getParameter("machineid"));
		MachineService mservice=new MachineServiceImpl();
		boolean b=mservice.isDeleteMachineById(id);
		if(b)
		{
			RequestDispatcher rd=req.getRequestDispatcher("viewmachine.jsp");
			rd.include(req, res);
		}
	}

}
 