package com.example.demo.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "blogs")
public class Blog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 100)
    private String title;

    @Column(nullable = false, length = 255)
    private String subDescription;

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "publication_date", nullable = false)
    private Date publicationDate;

    @Column(nullable = false, length = 255)
    private String image;
    @Column(nullable = false, length = 100)
    private String author;
   
    public Long getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getSubDescription() {
        return subDescription;
    }

    public Date getPublicationDate() {
        return publicationDate;
    }

    public String getImage() {
        return image;
    }

    
    public void setId(Long id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setSubDescription(String subDescription) {
        this.subDescription = subDescription;
    }

    public void setPublicationDate(Date publicationDate) {
        this.publicationDate = publicationDate;
    }

    public void setImage(String image) {
        this.image = image;
    }
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
