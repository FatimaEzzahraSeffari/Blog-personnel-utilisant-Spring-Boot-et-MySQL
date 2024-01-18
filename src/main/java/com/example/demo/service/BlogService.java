package com.example.demo.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.model.Blog;
import com.example.demo.repository.BlogRepository;

import java.util.List;

@Service
public class BlogService {

    @Autowired
    private BlogRepository blogRepo;

    public List<Blog> listAll() {
        return blogRepo.findAll();
    }

    public void saveBlog(Blog blog) {
        blogRepo.save(blog);
    }

    public Blog getBlog(Long id) {
        return blogRepo.findById(id).orElse(null);
    }

    public void deleteBlog(Long id) {
        blogRepo.deleteById(id);
    }
    
}

