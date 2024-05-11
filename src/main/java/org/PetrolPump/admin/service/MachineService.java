package org.PetrolPump.admin.service;

import java.util.List;

import org.PetrolPump.admin.model.MachineModel;

public interface MachineService {
	
	public boolean isAddNewMachine(MachineModel model,String ftype[],String capacity[]);
	public List <Object[]> getAllMachines();
	public boolean isDeleteMachineById(int id);
	public boolean isUpdateMachine(MachineModel model);
	public List <MachineModel> allMachineDetails();
}
