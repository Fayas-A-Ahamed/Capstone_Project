package com.wecp.event_management_system.controllers;
 
import com.wecp.event_management_system.entities.Client;
import com.wecp.event_management_system.entities.Event;
import com.wecp.event_management_system.repositories.ClientRepository;
import com.wecp.event_management_system.services.EventService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
 
import java.util.List;
 
@RestController
@RequestMapping("/api/client")
public class ClientController {
 
    // @Autowired
    // private EventService eventService;


    // @GetMapping("/events")
    // public ResponseEntity<List<Event>> getEvents(){
    //     List<Event> events=eventService.getAllEvents();
    //     return new ResponseEntity<>(events, HttpStatus.OK);

    // }
    
    // @PutMapping("/event/{eventId}")
    // public ResponseEntity<Event> updateFeedback(@PathVariable Long eventId, @RequestParam String feedback){
    //     Event updateEvent=eventService.updateFeedback(eventId, feedback);
    //     return new ResponseEntity<Event>(updateEvent, HttpStatus.OK);
       
       
    // }

    @Autowired
    private EventService eventService;

    @GetMapping("/events")
    public ResponseEntity<List<Event>> getEvents() {
        return new ResponseEntity<>(eventService.getAllEvents(), HttpStatus.OK);
    }

    @PutMapping("/event/{eventId}") 
    public ResponseEntity<Event> updateFeedback(@PathVariable Long eventId, @RequestParam String feedback){
        return new ResponseEntity<Event>(eventService.updateFeedback(eventId, feedback), HttpStatus.OK);
    }

 

}