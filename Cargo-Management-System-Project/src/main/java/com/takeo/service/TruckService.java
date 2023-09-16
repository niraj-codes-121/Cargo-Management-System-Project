package com.takeo.service;

import com.takeo.dto.TruckDto;

import java.util.List;

public interface TruckService {

    TruckDto createTruck(TruckDto truckDto);
    TruckDto updateTruck(TruckDto truckDto, Integer truckId);
    TruckDto getTruckById(Integer truckId);
    List<TruckDto> getAllTrucks();
    void deleteTruck(Integer truckId);
}
