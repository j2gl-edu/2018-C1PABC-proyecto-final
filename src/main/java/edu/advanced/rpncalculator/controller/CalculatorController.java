package edu.advanced.rpncalculator.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import edu.advanced.rpncalculator.model.ResultResponse;

@RestController
public class CalculatorController {

    @PostMapping(value = "/calculator", produces = "application/json")
    @ResponseBody
    public ResultResponse calculate(@RequestParam("expression") final String expression) {
        ResultResponse response = new ResultResponse();
        response.setResult("33.99");
        return response;
    }

    @GetMapping("/calculator")
    @ResponseBody
    public ResultResponse getCalculator() {
        ResultResponse response = new ResultResponse();
        response.setResult("Please use POST method");
        return response;
    }
}