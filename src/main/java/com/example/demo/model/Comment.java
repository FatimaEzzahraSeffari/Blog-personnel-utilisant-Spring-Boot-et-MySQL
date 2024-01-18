package com.example.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "comments")
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 1000) // Ajustez la longueur en fonction de vos besoins
    private String text;

    @Column(nullable = false, length = 100)
    private String name;

    @Column(nullable = false, length = 255)
    private String image;

    @Column(nullable = false, length = 100)
    private String profession;

   

    // Getters
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

    // Setters
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
