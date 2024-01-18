package com.example.demo.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.model.Blog;
import com.example.demo.repository.CommentRepository;
import com.example.demo.model.Comment;
import java.util.List;
@Service
public class CommentService {
	 @Autowired
	    private CommentRepository commentRepo;

	    public List<Comment> listAll() {
	        return commentRepo.findAll();
	    }

	    public void saveComment(Comment comment) {
	    	commentRepo.save(comment);
	    }

	    public Comment getComment(Long id) {
	        return commentRepo.findById(id).orElse(null);
	    }

	    public void deleteComment(Long id) {
	        commentRepo.deleteById(id);
	    }
}
