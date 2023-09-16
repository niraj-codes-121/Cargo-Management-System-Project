package com.takeo.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.client.ResourceAccessException;

import com.takeo.dto.TruckDto;
import com.takeo.entity.Truck;
import com.takeo.repo.TruckRepository;
import com.takeo.service.TruckService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor

public class TruckServiceImpl implements TruckService {

    private final TruckRepository truckRepository;

    @Override
    public TruckDto createTruck(TruckDto truckDto) {

        Truck truck = this.dtoToEntity(truckDto);
        Truck createdTruck = truckRepository.save(truck);

        return this.entityToDto(createdTruck);
    }

    @Override
    public TruckDto updateTruck(TruckDto truckDto, Integer truckId) {
        Truck truck = truckRepository.findById(truckId).orElseThrow(() -> new ResourceAccessException("No info"));
        truck.setName(truckDto.getName());
        truck.setDescription(truckDto.getDescription());
        truck.setWeight(truckDto.getWeight());
        truck.setVolume(truckDto.getVolume());
        truck.setPickupDate(truckDto.getPickupDate());
        truck.setDeliveryDate(truckDto.getDeliveryDate());

        Truck updatedTruck = this.truckRepository.save(truck);
        return this.entityToDto(updatedTruck);
    }


    @Override
    public TruckDto getTruckById(Integer truckId) {
        Truck truck = this.truckRepository.findById(truckId).orElseThrow(() -> new ResourceAccessException("No info"));
        TruckDto truckDto = this.entityToDto(truck);
        return truckDto;
    }

    @Override
    public List<TruckDto> getAllTrucks() {
        List<Truck> trucks = truckRepository.findAll();
        List<TruckDto> truckDtos = trucks.stream().map(truck -> this.entityToDto(truck)).collect(Collectors.toList());

        return truckDtos;
    }

    @Override
    public void deleteTruck(Integer truckId) {
        Truck truck = this.truckRepository.findById(truckId).orElseThrow(() -> new ResourceAccessException("No info"));
        this.truckRepository.deleteById(truckId);
    }

    public Truck dtoToEntity(TruckDto truckDto) {
        Truck truck = new Truck();
        BeanUtils.copyProperties(truckDto, truck);
        return truck;
    }

    public TruckDto entityToDto(Truck truck) {
        TruckDto truckDto = new TruckDto();
        BeanUtils.copyProperties(truck, truckDto);
        return truckDto;
    }
}
