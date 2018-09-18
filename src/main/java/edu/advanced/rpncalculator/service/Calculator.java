package edu.advanced.rpncalculator.service;

public interface Calculator {

    String calculate(String expression);
    String[] getHistory();
    String[] getSortedHistory();

}