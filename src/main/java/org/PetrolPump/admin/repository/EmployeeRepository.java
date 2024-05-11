package org.PetrolPump.admin.repository;

import java.util.List;

import org.PetrolPump.admin.model.*;

public interface EmployeeRepository {
public boolean isAddNewEmployee(EmployeeModel emodel);
public List<EmployeeModel> getAllEmployees();
public boolean allocateMachine(int eid,int mid,String ...x);
public int verifyEmployee(String email,String contact);
public List<EmployeeModel> getAllSearchEmp(String search);
}
