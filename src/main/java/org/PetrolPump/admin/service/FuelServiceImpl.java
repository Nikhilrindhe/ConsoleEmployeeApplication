package org.PetrolPump.admin.service;

import java.util.List;

import org.PetrolPump.admin.model.FuelModel;
import org.PetrolPump.admin.repository.FuelRepository;
import org.PetrolPump.admin.repository.FuelRepositoryImpl;

public class FuelServiceImpl implements FuelService{
	
		FuelRepository frepo=new FuelRepositoryImpl();
	@Override
	public boolean isAddFuelType(FuelModel model) {
		
		return frepo.isAddFuelType(model);
	}
	@Override
	public List<FuelModel> getAllFuelTypes() {
		
		return frepo.getAllFuelTypes();
	}
	
	public boolean isDeleteFuelType(int fuelid)
	{
		return frepo.isDeleteFuelType(fuelid);
	}

}
