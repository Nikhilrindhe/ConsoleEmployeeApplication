package org.PetrolPump.admin.repository;

import java.util.*;

import org.PetrolPump.admin.config.DBConfig;
import org.PetrolPump.admin.model.MachineModel;

public class MachineRepositoryImpl extends DBConfig implements MachineRepository {
	
		List <Object[]> list;
		List <MachineModel> al;
		//==================create new Macine id everey time=========================================================
		
		private int mid;
		public int getMid()
		{
			
			try {
				stmt=conn.prepareStatement("select max(mid) from machine");
				rs=stmt.executeQuery();
				if(rs.next())
				{
					mid=rs.getInt(1);
				}
				++mid;
			}			
			catch(Exception ex)
			{
				System.out.println("Some problem is there"+ex);
				return 0;
			}
			return mid;
		}
		//----------------Add new machine logic----------------------
    @Override
    public boolean isAddNewMachine(MachineModel model,String ftype[],String capacity[]) {
    	try {
    		int id=this.getMid();
    		 stmt=conn.prepareStatement("insert into machine values (?,?)");
    		 stmt.setInt(1, id);
    		 stmt.setString(2,model.getMachinecode());
    		 int val=stmt.executeUpdate();
    		 
//    		 -------------------------------------------------------------
    		
 			int j = 0;
 			if (val > 0) {
 
 				for (int i = 0; i < capacity.length; i++) {
 					if (capacity[i].equals("")) {

 					} else {

 						stmt=conn.prepareStatement("insert into machineftypejoin values(?,?,?)"); 
    					stmt.setInt(1, id);
    					stmt.setInt(2, Integer.parseInt(ftype[j]));
    				 stmt.setInt(3,Integer.parseInt(capacity[i]));
    				 val=stmt.executeUpdate();
 						j++;
 					}
 				}
 				return val > 0 ? true : false;
 			} 
 			else {
 				return false;
 			}
    	}
 			
    	catch(Exception ex)
    	{
    		System.out.println("Error is -->"+ex);
    		return false;
    	}     
    }
//===========================Get all machine logic=====================================================
	@Override
	public List<Object[]> getAllMachines() {
		try {
			list=new ArrayList <Object[]>();
			stmt=conn.prepareStatement("select m.mcode,f.fname,mfj.capacity,m.mid from machine m left join machineftypejoin mfj on m.mid=mfj.mid left join fueltype f on f.fid=mfj.fid");
			rs=stmt.executeQuery();
			while(rs.next()) 
			{
				Object []obj=new Object[]{rs.getString(1),rs.getString(2),rs.getInt(3),rs.getInt(4)};
				list.add(obj);
			}
			return list.size()>0?list:null;	
		}
		catch(Exception ex)
		{
			System.out.println("Error is-->"+ex);
			return null;
		}
	}
	//====================get all machine detailes==================================================================
	public List <MachineModel> allMachineDetails()
	{
		try {
			al=new ArrayList<MachineModel>();
			stmt=conn.prepareStatement("select *from machine");
			rs=stmt.executeQuery();
			while(rs.next())
			{
				MachineModel model=new MachineModel();
				model.setId(rs.getInt(1));
				model.setMachinecode(rs.getString(2));
				al.add(model);
			}
			return al.size()>0?al:null;
		}
		catch(Exception ex)
		{
			System.out.println("Error is==>"+ex);
			return null;
		}
	}
/*-----------------------------Machine delete logic-----------------------------------------------------------------------------------*/	
	@Override
	public boolean isDeleteMachineById(int id) 
	{
		try {
			stmt=conn.prepareStatement("delete from machine where mid=?");
			stmt.setInt(1, id);
			int value=stmt.executeUpdate();
			return value>0?true:false;
		}
		catch(Exception ex)
		{
			System.out.println("Error is-->"+ex);
			return false;
		}
		
	}
/*----------------Machine update logic---------------------------------------------------------------------------*/
	@Override
	public boolean isUpdateMachine(MachineModel model) {
		try {
			stmt=conn.prepareStatement("update machine set mcode=? where mid=?");
			stmt.setString(1,model.getMachinecode());
			stmt.setInt(2, model.getId());
			int value=stmt.executeUpdate();
			return value>0?true:false;
			
		}
		catch(Exception ex)
		{
			System.out.println("Error is-->"+ex);
			return false;
		}
		    
	}
	
}

