package org.PetrolPump.admin.service;
import java.util.List;

import org.PetrolPump.admin.model.*;
public interface FuelService {
public boolean isAddFuelType(FuelModel model);
public List<FuelModel> getAllFuelTypes();
public boolean isDeleteFuelType(int fuelid);
}
