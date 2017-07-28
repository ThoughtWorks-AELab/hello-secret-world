package com.thoughtworks.dps.hellosecretworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;

@EnableAutoConfiguration
public class HelloSecretApp {
    public static void main(String[] args) {
        SpringApplication.run(HelloSecretApp.class, args);
    }

}
