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

import com.takeo.dto.TruckDto; // Import TruckDto
import com.takeo.service.TruckService; // Import TruckService

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TruckController {

    private final TruckService truckService; // Change cargoService to truckService

	/*
	 * @GetMapping("/home") public String showHomePage() { return "home"; }
	 */

    @GetMapping("/truck-home") // Change cargo-home to truck-home
    public String showTruckHomePage() {
        return "truck-home"; // Change cargo-home to truck-home
    }

    @GetMapping("/truck-add") // Change cargo-add to truck-add
    public String truckHome() {
        return "truck-add"; // Change cargo-add to truck-add
    }

    @PostMapping("/createTruck") // Change createCargo to createTruck
    public String createTruck(TruckDto truckDto, Model model) { // Change cargoDto to truckDto

        SimpleDateFormat dateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", Locale.ENGLISH);
        try {
            System.out.println("till here");
            Date pickupDate = dateFormat.parse(String.valueOf(truckDto.getPickupDate()));
            Date deliveryDate = dateFormat.parse(String.valueOf(truckDto.getDeliveryDate()));
            truckDto.setPickupDate(pickupDate);
            truckDto.setDeliveryDate(deliveryDate);
            truckDto = this.truckService.createTruck(truckDto); // Change createCargo to createTruck
            model.addAttribute("truckDto", truckDto); // Change cargoDto to truckDto
            model.addAttribute("message", "Truck Created Successfully..."); // Change Cargo to Truck
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return "success";
    }

    @GetMapping("/truck-view") // Change cargo-view to truck-view
    public String getAllTrucks(Model model) { // Change cargoList to truckList
        List<TruckDto> truckList = this.truckService.getAllTrucks(); // Change cargoService to truckService
        System.out.println(truckList);
        model.addAttribute("truckList", truckList); // Change cargoList to truckList
        return "truck-list"; // Change cargo-list to truck-list
    }

    @GetMapping("/truck-edit") // Change cargo-edit to truck-edit
    public String loadUpdateForm(@RequestParam("truckId") Integer truckId, Model model) { // Change cargoId to truckId
        TruckDto truckDto = this.truckService.getTruckById(truckId); // Change cargoService to truckService
        model.addAttribute("truckDto", truckDto); // Change cargoDto to truckDto
        System.out.println(truckDto);
        return "truck-edit"; // Change cargo-edit to truck-edit
    }

    @GetMapping("/updateTruck") // Change updateCargo to updateTruck
    public String updateTruck(@RequestParam("truckId") Integer truckId, Model model, TruckDto truckDto) { // Change cargoId and cargoDto to truckId and truckDto
        TruckDto updatedTruck = this.truckService.updateTruck(truckDto, truckId); // Change cargoService to truckService

        return "redirect:/truck-view"; // Change cargo-view to truck-view
    }

    @GetMapping("/truck-delete") // Change cargo-delete to truck-delete
    public String deleteTruck(@RequestParam("truckId") Integer truckId, TruckDto truckDto, Model model) { // Change cargoId and cargoDto to truckId and truckDto
        this.truckService.deleteTruck(truckId); // Change cargoService to truckService

        return "redirect:/truck-view"; // Change cargo-view to truck-view
    }
}
