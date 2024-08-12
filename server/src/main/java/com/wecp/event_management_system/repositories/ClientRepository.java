package com.wecp.event_management_system.repositories;
 
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wecp.event_management_system.entities.Client;
 
// @Repository
// public interface ClientRepository extends JpaRepository<Client, Long> {
// }
 
@Repository
public interface ClientRepository extends JpaRepository<Client, Long>{
    
}