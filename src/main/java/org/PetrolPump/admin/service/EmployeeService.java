package org.PetrolPump.admin.service;
import org.PetrolPump.admin.model.*;
import java.util.*;
public interface EmployeeService {
	public boolean isAddNewEmployee(EmployeeModel emodel);
	public List<EmployeeModel> getAllEmployees();
	public boolean allocateMachine(int eid,int mid,String ...x);
	public int verifyEmployee(String email,String contact);
	public List<EmployeeModel> getAllSearchEmp(String search);
}
