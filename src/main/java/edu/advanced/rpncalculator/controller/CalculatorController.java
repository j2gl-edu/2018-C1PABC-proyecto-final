package edu.advanced.rpncalculator.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import edu.advanced.rpncalculator.model.RequestExpression;
import edu.advanced.rpncalculator.model.ResultResponse;
import edu.advanced.rpncalculator.service.Calculator;

@RestController
public class CalculatorController {

    final private Calculator calculator;

    public CalculatorController(Calculator calculator) {
        this.calculator = calculator;
    }

    @PostMapping(value = "/calculator", produces = "application/json")
    @ResponseBody
    public ResultResponse calculate(@RequestBody RequestExpression requestExpression) {
        ResultResponse response = new ResultResponse();
        String result = calculator.calculate(requestExpression.getExpression());
        response.setResult(result);
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