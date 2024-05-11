package org.PetrolPump.admin.repository;

import java.util.List;

import org.PetrolPump.admin.model.MachineModel;

public interface MachineRepository {
	public boolean isAddNewMachine(MachineModel model,String ftype[],String capacity[]);
	public List <Object[]> getAllMachines();
	public boolean isDeleteMachineById(int id);
	public boolean isUpdateMachine(MachineModel model);
	public List <MachineModel> allMachineDetails();
}
