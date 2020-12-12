package org.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/calculator")
public class CalculatorController {
    @GetMapping
    public String index() {
        return "index";
    }

    @PostMapping
    public String calculate(
            @RequestParam(name = "firstNum") double firstNum,
            @RequestParam(name = "secondNum") double secondNum,
            @RequestParam(name = "calculate") String calculate,
            Model model) {
        double result = 0;
        switch (calculate) {
            case "+":
                result = firstNum + secondNum;
                break;
            case "-":
                result = firstNum - secondNum;
                break;
            case "*":
                result = firstNum * secondNum;
                break;
            case "/":
                if (secondNum > 0) {
                    result = firstNum / secondNum;
                } else {
                    throw new ArithmeticException("Can't divide by zero!");
                }
                break;
            default:
                throw new UnsupportedOperationException("Not supported yet.");
        }
        model.addAttribute("result", result);
        return "index";
    }
}
