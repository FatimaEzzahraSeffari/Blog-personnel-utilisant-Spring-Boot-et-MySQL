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
import com.example.demo.repository.FeedbackRepository;
import com.example.demo.service.BlogService;
import com.example.demo.service.CommentService;
import com.example.demo.service.EtudiantService;
import com.example.demo.service.FeedbackService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@Controller
public class BlogController {

    @Autowired
    private BlogService service;
    @Autowired
    private CommentService service2;
    @Autowired
    private FeedbackService feedbackService;
    @GetMapping("/bloglist")
    public String viewHomePage(Model model) {
        List<Blog> listBlogs = service.listAll();
        model.addAttribute("listblogs", listBlogs);
        System.out.println("Number of records retrieved: " + listBlogs.size()); 
        return "bloglist"; 
    }
    
    @GetMapping("/welcome")
    public String viewHomePage2(Model model) {
        List<Blog> listBlogs = service.listAll();
        List<Comment> listComments = service2.listAll();
        model.addAttribute("listcomments", listComments);
        model.addAttribute("listblogs", listBlogs);
        System.out.println("Number of records retrieved: " + listBlogs.size()); 
        return "welcome";
    }

	  @GetMapping("/AddBlog")
	    public String showRegistrationForm(Model model) {
	        model.addAttribute("user", new Blog());
	         
	        return "blog";
	    }  

	 
	    @PostMapping("/processblog")
	    public String saveBlog(@ModelAttribute("blog") Blog blog) {
	        service.saveBlog(blog);
	        return "successblog";
	    }
	  

	    @GetMapping("/editblog/{id}")
	    public String showEditBlogPage(@PathVariable(name = "id") Long id, Model model) {
	        Blog blog = service.getBlog(id);
	        model.addAttribute("blog", blog);
	        return "editblog"; 
	    }

	    @PostMapping("/editblog/{id}")
	    public String processEditBlog(@PathVariable(name = "id") Long id, 
	                                      @ModelAttribute("blog") Blog blog) {
	        service.saveBlog(blog);
	        
	        return "redirect:/bloglist";
	    }

	    @GetMapping("/deleteblog/{id}")
	    public String deleteBlog(@PathVariable(name = "id") Long id) {
	        service.deleteBlog(id);
	        return "redirect:/bloglist";
	    }
	  
	 
	    @GetMapping("/SingleBlog/{id}")
	    public String viewSingleBlog(@PathVariable Long id, Model model) {
	        Blog blog = service.getBlog(id);

	        if (blog != null) {
	            model.addAttribute("blog", blog);

	            
	            List<Feedback> listFeedbacks = feedbackService.listFeedbackByBlogId(id);
	            System.out.println("Number of feedbacks retrieved: " + listFeedbacks.size());
	            model.addAttribute("listfeedbacks", listFeedbacks);

	            return "SingleBlog";
	        } else {
	            return "redirect:/bloglist";
	        }
	    }





	    


}
