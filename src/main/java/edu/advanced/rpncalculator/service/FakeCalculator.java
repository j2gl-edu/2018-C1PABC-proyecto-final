package edu.advanced.rpncalculator.service;

import java.util.LinkedList;

public class FakeCalculator implements Calculator {

    private LinkedList<String> linkedList = new LinkedList<>();

    @Override
    public String calculate(String expression) {
        linkedList.add(expression);
        return "This is what you need to solve: " + expression + ". ";
    }

    @Override
    public String[] getHistory() {
        // TODO Should return the list.
        return linkedList.toArray(new String[0]);
    }

    @Override
    public String[] getSortedHistory() {
        // TODO Should return the ordered list.
        return linkedList.toArray(new String[0]);
    }

}