package com.example.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ContactRepository;
import com.example.demo.model.Contact;
import java.util.List;
@Service
public class ContactService {
	 @Autowired
	    private ContactRepository contactRepo;

	    public List<Contact> listAll() {
	        return contactRepo.findAll();
	    }

	    public void saveContact(Contact contact) {
	    	contactRepo.save(contact);
	    }

	    public Contact getContact(Long id) {
	        return contactRepo.findById(id).orElse(null);
	    }

	    public void deleteContact(Long id) {
	    	contactRepo.deleteById(id);
	    }
}
