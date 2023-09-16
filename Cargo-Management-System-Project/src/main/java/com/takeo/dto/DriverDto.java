package com.takeo.dto;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class DriverDto {
    private Integer driverId; // Change cargoId to driverId
    private String name; // Change name to driverName
    private String description; // Change description to driverDescription
    private Double weight; // Change weight to driverWeight
    private Double volume; // Change volume to driverVolume
    @DateTimeFormat(pattern= "yyyy-MM-dd")
    private Date pickupDate; // Change pickupDate to driverPickupDate
    @DateTimeFormat(pattern= "yyyy-MM-dd")
    private Date deliveryDate; // Change deliveryDate to driverDeliveryDate
}
