package com.thoughtworks.dps.hellosecretworld.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloSecretController {

    @Value("${secret1}")
    private String secret;

    @RequestMapping("/")
    String home() {
        return "Hello World: " + secret;
    }

}
