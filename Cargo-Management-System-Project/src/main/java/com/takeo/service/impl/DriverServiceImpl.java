package com.takeo.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.client.ResourceAccessException;

import com.takeo.dto.DriverDto; // Change CargoDto to DriverDto
import com.takeo.entity.Driver; // Change Cargo to Driver
import com.takeo.repo.DriverRepository; // Change CargoRepository to DriverRepository
import com.takeo.service.DriverService; // Change CargoService to DriverService

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class DriverServiceImpl implements DriverService {

    private final DriverRepository driverRepository; // Change CargoRepository to DriverRepository

    @Override
    public DriverDto createDriver(DriverDto driverDto) { // Change createCargo to createDriver

        Driver driver = this.dtoToEntity(driverDto); // Change dtoToEntity to work with drivers
        Driver createdDriver = driverRepository.save(driver);

        return this.entityToDto(createdDriver); // Change entityToDto to work with drivers
    }

    @Override
    public DriverDto updateDriver(DriverDto driverDto, Integer driverId) { // Change updateCargo to updateDriver
        Driver driver = driverRepository.findById(driverId).orElseThrow(() -> new ResourceAccessException("No info"));
        driver.setName(driverDto.getName());
        driver.setDescription(driverDto.getDescription());
        driver.setWeight(driverDto.getWeight());
        driver.setVolume(driverDto.getVolume());
        driver.setPickupDate(driverDto.getPickupDate());
        driver.setDeliveryDate(driverDto.getDeliveryDate());

        Driver updatedDriver = this.driverRepository.save(driver);
        return this.entityToDto(updatedDriver); // Change entityToDto to work with drivers
    }

    @Override
    public DriverDto getDriverById(Integer driverId) { // Change getCargoById to getDriverById
        Driver driver = this.driverRepository.findById(driverId).orElseThrow(() -> new ResourceAccessException("No info"));
        DriverDto driverDto = this.entityToDto(driver); // Change entityToDto to work with drivers
        return driverDto;
    }

    @Override
    public List<DriverDto> getAllDrivers() { // Change getAllCargo to getAllDrivers
        List<Driver> drivers = driverRepository.findAll();
        List<DriverDto> driverDtos = drivers.stream().map(driver -> this.entityToDto(driver)).collect(Collectors.toList()); // Change entityToDto to work with drivers

        return driverDtos;
    }

    @Override
    public void deleteDriver(Integer driverId) { // Change deleteCargo to deleteDriver
        Driver driver = this.driverRepository.findById(driverId).orElseThrow(() -> new ResourceAccessException("No info"));
        this.driverRepository.deleteById(driverId);
    }

    public Driver dtoToEntity(DriverDto driverDto) { // Change dtoToEntity to work with drivers
        Driver driver = new Driver();
        BeanUtils.copyProperties(driverDto, driver);
        return driver;
    }

    public DriverDto entityToDto(Driver driver) { // Change entityToDto to work with drivers
        DriverDto driverDto = new DriverDto();
        BeanUtils.copyProperties(driver, driverDto);
        return driverDto;
    }
}
