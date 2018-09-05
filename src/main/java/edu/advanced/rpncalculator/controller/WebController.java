package edu.advanced.rpncalculator.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {
    
	@GetMapping("/web/calculator")
	public String webCalculator(Map<String, Object> model) {
		return "calculator";
	}

}