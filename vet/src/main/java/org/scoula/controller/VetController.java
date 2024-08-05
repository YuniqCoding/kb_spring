package org.scoula.controller;

import lombok.extern.log4j.Log4j;
import org.scoula.dto.AnimalDTO;
import org.scoula.dto.AppointmentDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/vet")
@Log4j
public class VetController {

    @GetMapping("/animalInfo")
    public String animalInfo(AnimalDTO animalDTO) {
        log.info("Animal Info: " + animalDTO);
        return "vet/animalInfo";
    }

    @GetMapping("/appointment")
    public String appointment(AppointmentDTO appointmentDTO) {
        log.info("Appointment Info: " + appointmentDTO);
        return "vet/appointment";
    }

    @GetMapping("/appointmentList")
    public String appointmentList(@RequestParam("owner") String ownerName, @RequestParam("date") String date, @ModelAttribute("appointments") List<AppointmentDTO> appointments) {
        log.info("Owner: " + ownerName);
        log.info("Date: " + date);
        return "vet/appointmentList";
    }

    @GetMapping("/animalDetail")
    public String animalDetail(AnimalDTO animalDTO, @ModelAttribute("id") int animalId) {
        log.info("Animal Detail: " + animalDTO);
        log.info("Animal ID: " + animalId);
        return "vet/animalDetail";
    }

    @ModelAttribute("animals")
    public List<AnimalDTO> populateAnimals() {
        List<AnimalDTO> animals = new ArrayList<>();
        animals.add(new AnimalDTO("Max", "Dog", 5));
        animals.add(new AnimalDTO("Luna", "Cat", 3));
        animals.add(new AnimalDTO("Charlie", "Rabbit", 2));
        return animals;
    }

    @ModelAttribute("appointments")
    public List<AppointmentDTO> populateAppointments() {
        List<AppointmentDTO> appointments = new ArrayList<>();
        appointments.add(new AppointmentDTO("John Doe", "Max", new Date(), "Vaccination"));
        appointments.add(new AppointmentDTO("Jane Smith", "Luna", new Date(), "Checkup"));
        return appointments;
    }
}