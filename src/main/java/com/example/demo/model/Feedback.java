package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "feedback")
public class Feedback {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 1000)
    private String text;

    @Column(nullable = false, length = 100)
    private String name;

    @Column(nullable = false, length = 255)
    private String image;

    @Column(nullable = false, length = 100)
    private String profession;

    @Column(name = "blog_id")  
    private Long blogId;

   
    public Feedback() {
    }

    // Getters and setters
    public Long getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    public String getProfession() {
        return profession;
    }

    public Long getBlogId() {
        return blogId;
    }

    public void setBlogId(Long blogId) {
        this.blogId = blogId;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }
}
