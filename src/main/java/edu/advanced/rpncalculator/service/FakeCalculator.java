package edu.advanced.rpncalculator.service;

public class FakeCalculator implements Calculator {

    @Override
    public String calculate(String expression) {
        return "This is what you need to solve: " + expression + ". ";
    }

}