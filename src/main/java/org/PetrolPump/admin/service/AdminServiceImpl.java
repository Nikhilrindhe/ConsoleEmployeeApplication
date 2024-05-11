package org.PetrolPump.admin.service;

import org.PetrolPump.admin.config.DBConfig;
import org.PetrolPump.admin.repository.*;

public class AdminServiceImpl implements AdminService{

		AdminRepository arepo=new AdminRepositoryImpl();
	@Override
	public boolean isverifyadmin(String email, String contact) {
		return arepo.isverifyadmin(email, contact);
	}
	

}
