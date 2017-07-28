package com.thoughtworks.dps.hellosecretworld.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableAutoConfiguration
public class HelloSecretController {

    @Value("${secret1}")
    private String secret;

    @RequestMapping("/")
    String home() {
        return "Hello World: " + secret;
    }

    public static void main(String[] args) {
        SpringApplication.run(HelloSecretController.class, args);
    }

}
