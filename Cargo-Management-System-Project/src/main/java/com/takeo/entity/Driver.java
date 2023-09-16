package com.takeo.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
@Entity
public class Driver {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer driverId; // Change cargoId to driverId
    private String name; // Change name to driverName
    private String description; // Change description to driverDescription
    private Double weight; // Change weight to driverWeight
    private Double volume; // Change volume to driverVolume
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pickupDate; // Change pickupDate to driverPickupDate
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date deliveryDate; // Change deliveryDate to driverDeliveryDate
}
