package com.thoughtworks.dps.hellosecretworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan("com.thoughtworks.dps.hellosecretworld.controllers")
public class HelloSecretApp {
    public static void main(String[] args) {
        SpringApplication.run(HelloSecretApp.class, args);
    }

}
