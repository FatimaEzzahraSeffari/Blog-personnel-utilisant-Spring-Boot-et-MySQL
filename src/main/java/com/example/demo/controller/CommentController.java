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
import com.example.demo.service.CommentService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@Controller
public class CommentController {

    @Autowired
    private CommentService service;
    @GetMapping("/commentlist")
    public String viewHomePage(Model model) {
        List<Comment> listComments = service.listAll();
        model.addAttribute("listcomments", listComments);
        System.out.println("Number of records retrieved: " + listComments.size()); 
        return "commentlist"; 
    }
	  @GetMapping("/AddComment")
	    public String showRegistrationForm(Model model) {
	        model.addAttribute("comment", new Comment());
	         
	        return "comment";
	    }
	 
	    @PostMapping("/processcomment")
	    public String saveComment(@ModelAttribute("comment") Comment comment) {
	        service.saveComment(comment);
	        return "successcomment";
	    }
	    @GetMapping("/editcomment/{id}")
	    public String showEditCommentPage(@PathVariable(name = "id") Long id, Model model) {
	        Comment comment = service.getComment(id);
	        model.addAttribute("comment", comment);
	        return "editcomment"; 
	    }
	    @PostMapping("/editcomment/{id}")
	    public String processEditComment(@PathVariable(name = "id") Long id, 
	                                      @ModelAttribute("comment") Comment comment) {
	        
	        service.saveComment(comment);
	        
	        
	        return "redirect:/commentlist";
	    }

	    @GetMapping("/deletecomment/{id}")
	    public String deleteComment(@PathVariable(name = "id") Long id) {
	        service.deleteComment(id);
	        return "redirect:/commentlist";
	    }
	  

}