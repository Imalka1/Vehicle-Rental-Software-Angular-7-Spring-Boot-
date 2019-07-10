package lk.vrs.service;

import lk.vrs.entity.Vehicle;

import java.util.ArrayList;
import java.util.List;

public interface VehicleService {
    Vehicle addVehicle(Vehicle vehicle);

    Vehicle updateVehicle(Vehicle vehicle);

    void deleteVehicle(long id);

    List<Vehicle> getVehiclesViaCategory(String category);
}
