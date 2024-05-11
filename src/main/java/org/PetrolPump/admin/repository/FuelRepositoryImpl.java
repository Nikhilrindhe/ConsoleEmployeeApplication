package org.PetrolPump.admin.repository;

import java.util.*;

import org.PetrolPump.admin.config.DBConfig;
import org.PetrolPump.admin.model.EmployeeModel;
import org.PetrolPump.admin.model.FuelModel;

public class FuelRepositoryImpl extends DBConfig implements FuelRepository{
	List <FuelModel>list;
	
	private int id=0;
	public int isFuelId()
	{
		try {
			stmt=conn.prepareStatement("select max(fid) from fueltype");
			rs=stmt.executeQuery();
			if(rs.next())
			{
				id=rs.getInt(1);
				
			}
			return ++id;
		}
		catch(Exception ex)
		{
			System.out.println("Error is-->"+ex);
			return -1;
		}
	}

	public boolean isAddFuelType(FuelModel model) {
		try {
		int fid=this.isFuelId();
			stmt=conn.prepareStatement("insert into fueltype values(?,?)");
			stmt.setInt(1, fid);
			stmt.setString(2, model.getName());
			int val=stmt.executeUpdate();
			return val>0?true:false;
			
		}
		catch(Exception ex)
		{
			System.out.println("Error is-->"+ex);
			return false;
		}
		
	}

	
	public List<FuelModel> getAllFuelTypes() {
		try {
			list=new ArrayList();
			stmt=conn.prepareStatement("select *from fueltype");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				FuelModel model=new FuelModel();
				model.setId(rs.getInt(1));
				model.setName(rs.getString(2));
				list.add(model);
			}
			return list.size()>0?list:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is -->"+ex);
			return null;
		}
		
	}

	@Override
	public boolean isDeleteFuelType(int fuelid) {
		try {
			stmt=conn.prepareStatement("delete from fueltype where fid=?");
			stmt.setInt(1, fuelid);
			int val=stmt.executeUpdate();
			return val>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println("error is==>"+ex);
			return false;
		}	
	}
}
