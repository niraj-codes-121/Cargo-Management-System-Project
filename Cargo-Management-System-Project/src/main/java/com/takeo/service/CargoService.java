package com.takeo.service;

import com.takeo.dto.CargoDto;
import com.takeo.entity.Cargo;

import java.util.List;

public interface CargoService {

    
	
	CargoDto createCargo(CargoDto cargoDto);
    CargoDto updateCargo(CargoDto cargoDto, Integer cargoId);
    CargoDto getCargoById(Integer cargoId);
    List<CargoDto> getAllCargo();
    void deleteCargo(Integer cargoId);


}