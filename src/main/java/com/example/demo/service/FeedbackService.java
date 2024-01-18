package com.example.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.FeedbackRepository;
import com.example.demo.model.Feedback;
import java.util.List;
@Service
public class FeedbackService {
	 @Autowired
	    private FeedbackRepository feedbackRepo;
	    public List<Feedback> listAll() {
	        return feedbackRepo.findAll();
	    }

	    public void saveFeedback(Feedback feedback) {
	    feedbackRepo.save(feedback);
	    }
	    
	    public Feedback getFeedback(Long id) {
	        return feedbackRepo.findById(id).orElse(null);
	    }

	    public void deleteFeedback(Long id) {
	    	feedbackRepo.deleteById(id);
	    }
	    public List<Feedback> listFeedbackByBlogId(Long blogId) {
	        return feedbackRepo.findByBlogId(blogId);
	    }
	 // Add the missing method to get feedbacks by blog ID
	    public List<Feedback> getFeedbacksByBlogId(Long blogId) {
	        return feedbackRepo.findByBlogId(blogId);
	    }
}

