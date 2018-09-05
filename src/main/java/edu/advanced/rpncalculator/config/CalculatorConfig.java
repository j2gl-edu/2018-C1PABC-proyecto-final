package edu.advanced.rpncalculator.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import edu.advanced.rpncalculator.service.Calculator;
import edu.advanced.rpncalculator.service.FakeCalculator;

@Configuration
public class CalculatorConfig {

    @Bean
    public Calculator calculator() {
        return new FakeCalculator();
    }

}