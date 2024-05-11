package org.PetrolPump.admin.repository;
import org.PetrolPump.admin.model.*;
import java.util.*;

public interface FuelRepository {
public boolean isAddFuelType(FuelModel model);
public List<FuelModel> getAllFuelTypes();

public boolean isDeleteFuelType(int fuelid);
}
