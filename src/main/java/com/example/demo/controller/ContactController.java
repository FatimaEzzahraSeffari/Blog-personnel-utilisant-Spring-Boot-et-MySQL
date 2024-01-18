package com.example.demo.controller;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.model.Blog;
import com.example.demo.model.Contact;
import com.example.demo.service.ContactService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@Controller
public class  ContactController {

    @Autowired
    private ContactService service;
    @GetMapping("/contactlist")
    public String viewHomePage(Model model) {
        List<Contact> listContacts = service.listAll();
        model.addAttribute("listcontacts", listContacts);
        System.out.println("Number of records retrieved: " + listContacts.size()); 
        return "contactlist"; 
    }
	  @GetMapping("/AddContact")
	    public String showRegistrationForm(Model model) {
	        model.addAttribute("contact", new Contact());
	         
	        return "contact";
	    }
	 
	    @PostMapping("/processcontact")
	    public String saveContact(@ModelAttribute("contact") Contact contact) {
	        service.saveContact(contact);
	        return "successcontact";
	    }
	    @GetMapping("/editcontact/{id}")
	    public String showEditContactPage(@PathVariable(name = "id") Long id, Model model) {
	        Contact contact = service.getContact(id);
	        model.addAttribute("contact", contact);
	        return "editcontact"; 
	    }
	    @PostMapping("/editcontact/{id}")
	    public String processEditContact(@PathVariable(name = "id") Long id, 
	                                      @ModelAttribute("contact") Contact contact) {
	        
	        service.saveContact(contact);
	        
	        
	        return "redirect:/contactlist";
	    }

	    @GetMapping("/deletecontact/{id}")
	    public String deleteContact(@PathVariable(name = "id") Long id) {
	        service.deleteContact(id);
	        return "redirect:/contactlist";
	    }
	  

}