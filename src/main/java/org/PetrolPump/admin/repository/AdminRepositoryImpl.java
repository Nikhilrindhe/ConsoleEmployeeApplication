package org.PetrolPump.admin.repository;

import org.PetrolPump.admin.config.DBConfig;

public class AdminRepositoryImpl extends DBConfig implements AdminRepository {

	@Override
	public boolean isverifyadmin(String email, String contact) {
		try {
			stmt=conn.prepareStatement("select *from admin where email=? and contact=?");
			stmt.setString(1, email);
			stmt.setString(2, contact);
			rs=stmt.executeQuery();
			return rs.next()?true:false;
			
		}
		catch(Exception ex)
		{
			System.out.println("Error is ==>"+ex);
			return false;
		}
		
	}

}
