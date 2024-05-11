package org.PetrolPump.admin.service;

import java.util.List;

import org.PetrolPump.admin.model.EmployeeModel;
import org.PetrolPump.admin.repository.*;

public class EmployeeServiceImpl implements EmployeeService{

	EmployeeRepository erepo=new EmployeeRepositoryImpl();
	@Override
	public boolean isAddNewEmployee(EmployeeModel emodel) {
		return erepo.isAddNewEmployee(emodel);
	}
	@Override
	public List<EmployeeModel> getAllEmployees() {
		return erepo.getAllEmployees();
	}
	@Override
	public boolean allocateMachine(int eid, int mid, String... x) {
		
		return erepo.allocateMachine(eid, mid, x);
	}
	@Override
	public int verifyEmployee(String email, String contact) {
		return erepo.verifyEmployee(email, contact);
	}
	@Override
	public List<EmployeeModel> getAllSearchEmp(String Search) {
		
		return erepo.getAllSearchEmp(Search);
	}
}
