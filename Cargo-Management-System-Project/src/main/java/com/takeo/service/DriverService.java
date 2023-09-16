package com.takeo.service;

import com.takeo.dto.DriverDto; // Change CargoDto to DriverDto
import java.util.List;

public interface DriverService { // Change CargoService to DriverService

    DriverDto createDriver(DriverDto driverDto); // Change createCargo to createDriver
    DriverDto updateDriver(DriverDto driverDto, Integer driverId); // Change updateCargo to updateDriver
    DriverDto getDriverById(Integer driverId); // Change getCargoById to getDriverById
    List<DriverDto> getAllDrivers(); // Change getAllCargo to getAllDrivers
    void deleteDriver(Integer driverId); // Change deleteCargo to deleteDriver
}