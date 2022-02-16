package com.example.project.controller;


import com.example.project.model.Login;
import com.example.project.model.User;
import com.example.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String login(ModelMap model){
        model.addAttribute(new Login());
        return "login";
    }

    @PostMapping("/login")
    public String login
            (@ModelAttribute("login") Login login, BindingResult bindingResult, ModelMap model){
        User user = userService.validateUser(login);
        boolean isValidUser = false;

        if(user!=null && user.getUsername().equals(login.getUsername()) &&
            user.getPassword().equals(login.getPassword())){
            isValidUser = true;
            model.addAttribute("username" , user.getUsername());
        }
        return isValidUser? "welcome" : "login";
    }
}
