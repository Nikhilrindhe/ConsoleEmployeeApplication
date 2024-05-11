package org.PetrolPump.admin.service;

import java.util.List;

import org.PetrolPump.admin.model.MachineModel;
import org.PetrolPump.admin.repository.MachineRepository;
import org.PetrolPump.admin.repository.MachineRepositoryImpl;

public class MachineServiceImpl implements MachineService{

	MachineRepository mr = new MachineRepositoryImpl();
	@Override
	public boolean isAddNewMachine(MachineModel model,String ftype[],String capacity[]) {
		return mr.isAddNewMachine(model,ftype,capacity);
	}
	@Override
	public List<Object[]> getAllMachines() {
		
		return mr.getAllMachines();
	}
	@Override
	public boolean isDeleteMachineById(int id) {
		
		return mr.isDeleteMachineById(id);
	}
	@Override
	public boolean isUpdateMachine(MachineModel model) {
		
		return mr.isUpdateMachine(model);
	}
	@Override
	public List<MachineModel> allMachineDetails() {
		return mr.allMachineDetails();
	}
	

}
