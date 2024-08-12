package com.wecp.event_management_system.repositories;

import com.wecp.event_management_system.entities.Event;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// @Repository
// public interface EventRepository extends JpaRepository<Event, Long>{

//     public List<Event> findByPlannerId(Long plannerId);
         


// }

@Repository 
public interface EventRepository extends JpaRepository<Event, Long>{
    public List<Event> findByPlannerId(Long plannerId);
}