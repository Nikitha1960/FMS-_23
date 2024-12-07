package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Buyer;
import com.klef.jfsd.springboot.service.BuyerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class BuyerController {
    @Autowired
    private BuyerService buyerService;

    @PostMapping("/buyerSignup")
    public String buyerSignup(@ModelAttribute Buyer buyer, Model model) {
        try {
            buyerService.registerBuyer(buyer);
            model.addAttribute("message", "Sign Up Successful! Please Sign In.");
            return "buyerSignin";
        } catch (Exception e) {
            model.addAttribute("error", "Sign Up Failed: " + e.getMessage());
            return "buyerSignup";
        }
    }

    @PostMapping("/buyerSignin")
    public String buyerSignin(@RequestParam String email, @RequestParam String password, Model model) {
        Buyer buyer = buyerService.authenticateBuyer(email, password);
        if (buyer != null) {
            model.addAttribute("buyer", buyer);
            return "buyerDashboard";
        } else {
            model.addAttribute("error", "Invalid Email or Password!");
            return "buyerSignin";
        }
    }
}
