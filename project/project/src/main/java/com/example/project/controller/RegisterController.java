package com.example.project.controller;

import com.example.project.model.User;
import com.example.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RegisterController {
    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public String register(@ModelAttribute("user") User user) {
        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute("user") User user, ModelMap model){
        userService.addUser(user);
        model.addAttribute("username" , user.getUsername());
        return "welcome";
    }
}
