package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.model.Blog;
import com.example.demo.model.Comment;
import com.example.demo.model.Etudiant;
import com.example.demo.model.Feedback;

import com.example.demo.repository.BlogRepository;
import com.example.demo.service.BlogService;
import com.example.demo.service.CommentService;
import com.example.demo.service.FeedbackService;
import com.example.demo.repository.FeedbackRepository;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@Controller
public class FeedbackController {

    @Autowired
    private FeedbackService service;
    @GetMapping("/feedbacklist")
    public String viewHomePage(Model model) {
        List<Feedback> listFeedbacks = service.listAll();
        model.addAttribute("listfeedbacks", listFeedbacks);
        System.out.println("Number of records retrieved: " + listFeedbacks.size()); 
        return "feedbacklist"; 
    }
    
   
    @GetMapping("/AddFeedback/{id}")
    public String showFeedbackForm(@PathVariable Long id, Model model) {
        
        model.addAttribute("blogId", id);
        model.addAttribute("feedback", new Feedback());
        return "feedback"; 
    }



    @PostMapping("/processFeedback/{blogId}")
    public String saveFeedback(@ModelAttribute("feedback") Feedback feedback) {
        service.saveFeedback(feedback);
        return "successfeedback";
    }

    @GetMapping("/editfeedback/{id}")
    public String showEditFeedbackPage(@PathVariable(name = "id") Long id, Model model) {
        Feedback feedback = service.getFeedback(id);
        model.addAttribute("feedback", feedback);
        return "editfeedback"; 
    }
    @PostMapping("/editfeedback/{id}")
    public String processEditFeedback(@PathVariable(name = "id") Long id, 
                                      @ModelAttribute("feedback") Feedback feedback) {
       
        service.saveFeedback(feedback);
        
        
        return "redirect:/feedbacklist";
    }

    @GetMapping("/deletefeedback/{id}")
    public String deleteFeedback(@PathVariable(name = "id") Long id) {
        service.deleteFeedback(id);
        return "redirect:/feedbacklist";
    }
}
