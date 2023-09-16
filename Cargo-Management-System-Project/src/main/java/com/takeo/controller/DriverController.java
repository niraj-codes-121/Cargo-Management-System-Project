package com.takeo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.takeo.dto.DriverDto; // Change CargoDto to DriverDto
import com.takeo.service.DriverService; // Change CargoService to DriverService

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class DriverController {

    private final DriverService driverService; // Change CargoService to DriverService

	/*
	 * @GetMapping("/home") public String showHomePage() { return "home"; }
	 */

    @GetMapping("/driver-home") // Change cargo-home to driver-home
    public String showDriverHomePage() {
        return "driver-home"; // Change cargo-home to driver-home
    }

    @GetMapping("/driver-add") // Change cargo-add to driver-add
    public String driverHome() {
        return "driver-add"; // Change cargo-add to driver-add
    }

    @PostMapping("/createDriver") // Change createCargo to createDriver
    public String createDriver(DriverDto driverDto, Model model) { // Change CargoDto to DriverDto

        SimpleDateFormat dateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", Locale.ENGLISH);
        try {
            System.out.println("till here");
            Date pickupDate = dateFormat.parse(String.valueOf(driverDto.getPickupDate()));
            Date deliveryDate = dateFormat.parse(String.valueOf(driverDto.getDeliveryDate()));
            driverDto.setPickupDate(pickupDate);
            driverDto.setDeliveryDate(deliveryDate);
            driverDto = this.driverService.createDriver(driverDto); // Change createCargo to createDriver
            model.addAttribute("driverDto", driverDto); // Change CargoDto to DriverDto
            model.addAttribute("message", "Driver Created Successfully..."); // Change Cargo to Driver
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return "success";
    }

    @GetMapping("/driver-view") // Change cargo-view to driver-view
    public String getAllDrivers(Model model) { // Change cargoList to driverList
        List<DriverDto> driverList = this.driverService.getAllDrivers(); // Change cargoService to driverService
        System.out.println(driverList);
        model.addAttribute("driverList", driverList); // Change cargoList to driverList
        return "driver-list"; // Change cargo-list to driver-list
    }

    @GetMapping("/driver-edit") // Change cargo-edit to driver-edit
    public String loadUpdateForm(@RequestParam("driverId") Integer driverId, Model model) { // Change cargoId to driverId
        DriverDto driverDto = this.driverService.getDriverById(driverId); // Change cargoService to driverService
        model.addAttribute("driverDto", driverDto); // Change cargoDto to driverDto
        System.out.println(driverDto);
        return "driver-edit"; // Change cargo-edit to driver-edit
    }

    @GetMapping("/updateDriver") // Change updateCargo to updateDriver
    public String updateDriver(@RequestParam("driverId") Integer driverId, Model model, DriverDto driverDto) { // Change cargoId and cargoDto to driverId and driverDto
        DriverDto updatedDriver = this.driverService.updateDriver(driverDto, driverId); // Change cargoService to driverService

        return "redirect:/driver-view"; // Change cargo-view to driver-view
    }

    @GetMapping("/driver-delete") // Change cargo-delete to driver-delete
    public String deleteDriver(@RequestParam("driverId") Integer driverId, DriverDto driverDto, Model model) { // Change cargoId and cargoDto to driverId and driverDto
        this.driverService.deleteDriver(driverId); // Change cargoService to driverService

        return "redirect:/driver-view"; // Change cargo-view to driver-view
    }
}
