package com.example.demo.repository;

import com.example.demo.model.Feedback;

import java.util.List; // Correct import statement

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, Long> {
    List<Feedback> findByBlogId(Long blogId);
}
