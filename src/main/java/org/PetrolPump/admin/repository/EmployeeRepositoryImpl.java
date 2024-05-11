package org.PetrolPump.admin.repository;

import java.util.*;

import org.PetrolPump.admin.config.DBConfig;
import org.PetrolPump.admin.model.EmployeeModel;

public class EmployeeRepositoryImpl extends DBConfig implements EmployeeRepository{
	List <EmployeeModel>list=new ArrayList <EmployeeModel>();
	private int empid=0;
	public int getEmployeeId()
	{
		try {
			stmt=conn.prepareStatement("select max(emp_id) from employee");
			rs=stmt.executeQuery();
			if(rs.next())
			{
				empid=rs.getInt(1);
				
			}
			++empid;
		}
		
		catch(Exception ex)
		{
			System.out.println("Error is==>"+ex);
			return -1;
		}
		return empid;
	}
	@Override
	public boolean isAddNewEmployee(EmployeeModel emodel) {
		try {
			int id=this.getEmployeeId();
			stmt=conn.prepareStatement("insert into employee values(?,?,?,?,?,?)");
			stmt.setInt(1, id);
			stmt.setString(2, emodel.getName());
			stmt.setString(3, emodel.getEmail());
			stmt.setString(4, emodel.getContact());
			stmt.setString(5, emodel.getAddress());
			stmt.setInt(6, emodel.getSal());
			int val=stmt.executeUpdate();
			return val>0?true:false;
			
		}
		catch(Exception ex)
		{
			System.out.println("Error is=>"+ex);
			return false;
		}
	}
	
	@Override
	public List<EmployeeModel> getAllEmployees() {
		try {
			stmt=conn.prepareStatement("select *from employee");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				EmployeeModel emodel=new EmployeeModel();
				emodel.setId(rs.getInt("emp_id"));
				emodel.setName(rs.getString("name"));
				emodel.setEmail(rs.getString("email"));
				emodel.setContact(rs.getString("contact"));
				emodel.setAddress(rs.getString("address"));
				emodel.setSal(rs.getInt("sal"));
				list.add(emodel);
			}
			return list!=null?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is==>"+ex);
			return null;
		}
	}
	@Override
	public boolean allocateMachine(int eid, int mid, String... x) {
		try {
			stmt=conn.prepareStatement("insert into machineemployeejoin values(?,?,?,?,?)");
			stmt.setInt(1, eid);
			stmt.setInt(2, mid);
			stmt.setString(3, x[0]);
			stmt.setString(4, x[1]);
			String split[]=x[2].split("-");
			java.sql.Date d=new java.sql.Date(Integer.parseInt(split[0]),Integer.parseInt(split[1]),Integer.parseInt(split[2]));
			stmt.setDate(5, d);
			int val=stmt.executeUpdate();
			return val>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println("Erro is===>"+ex);
			return false;
		}
	}
	@Override
	public int verifyEmployee(String email, String contact) {
		try {
			stmt=conn.prepareStatement("select *from employee where email=? and contact=?");
			stmt.setString(1, email);
			stmt.setString(2, contact);
			rs=stmt.executeQuery();
			if(rs.next())
			{
				return rs.getInt(1);
			}
			else {
				return 0;
			}
		}
		catch(Exception ex)
		{
			System.out.println("Error is==>"+ex);
		return 0;
		}
	}
	@Override
	public List<EmployeeModel> getAllSearchEmp(String search) {
		try {
			stmt=conn.prepareStatement("select *from employee where name like '%" + search + "%'");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				EmployeeModel emodel=new EmployeeModel();
				emodel.setId(rs.getInt("emp_id"));
				emodel.setName(rs.getString("name"));
				emodel.setEmail(rs.getString("email"));
				emodel.setContact(rs.getString("contact"));
				emodel.setAddress(rs.getString("address"));
				emodel.setSal(rs.getInt("sal"));
				list.add(emodel);
			}
			return list!=null?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is==>"+ex);
			return null;
		}
		
	}


}
