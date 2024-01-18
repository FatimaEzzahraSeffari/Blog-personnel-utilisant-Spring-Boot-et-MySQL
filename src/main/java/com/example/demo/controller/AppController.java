package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@Controller
public class AppController {
 
    @Autowired
    private UserRepository userRepo;
     
    @GetMapping("/welcome2")
    public String showRegistrationForm1() {
         
        return "welcom2";
    }
    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
         
        return "signup";
    }
    @PostMapping("/processregister")

    public String processRegister(User user) {

    if (user.getEmail().toLowerCase().contains("admin")) {

    userRepo.save(user);

    return "redirect:/admin";

    }


    if (user.getEmail().toLowerCase().contains("gmail")) {

    userRepo.save(user);

    return "redirect:/welcome";

    }


    return "redirect:/register?error";

    }
    @GetMapping("/users")
    public String listUsers(Model model) {
        List<User> listUsers = userRepo.findAll();
        model.addAttribute("listusers", listUsers);
         
        return "users";
    }
    
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }


    @PostMapping("/processlogin")

    public String processLogin(User user) {

    if (userRepo.login(user.getEmail(), user.getPassword())) {

    if (user.getEmail().toLowerCase().contains("admin")) {

    return "redirect:/admin";

    }


    if (user.getEmail().toLowerCase().contains("gmail")) {

    return "redirect:/welcome";

    }


    return "redirect:/welcome";

    } else {

    return "redirect:/login?error";

    }

    }
    	


    }
    	

   
    
