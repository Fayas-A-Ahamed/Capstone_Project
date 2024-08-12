package com.wecp.event_management_system.controllers;

import com.wecp.event_management_system.dto.LoginRequest;
import com.wecp.event_management_system.dto.LoginResponse;
import com.wecp.event_management_system.entities.User;
// import com.wecp.event_management_system.jwt.JwtUtil;
import com.wecp.event_management_system.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
// import org.springframework.security.authentication.AuthenticationManager;
// import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
// import org.springframework.security.core.AuthenticationException;
// import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

@RestController
public class RegisterAndLoginController {
    @Autowired
    private UserService userService;

    
}

