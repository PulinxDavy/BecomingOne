package com.becomingone.model.util;

import com.becomingone.model.BaseEntity;
import com.becomingone.model.user.User;
import com.becomingone.model.webpage.WelcomePart;

import javax.persistence.*;

/**
 * Created by Davy on 8/13/2015.
 */
@Entity
@Table(name = "images")
public class Image extends BaseEntity<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user")
    private User user;

    @Column(name = "name", length = 100, nullable = false)
    private String name;

    @Column(name = "image_path", length = 255, nullable = false, unique = true)
    private String path;

    @OneToOne(mappedBy = "image")
    private WelcomePart welcomePart;

    public Image() {

    }

    //region Getters & Setters
    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public WelcomePart getWelcomePart() {
        return welcomePart;
    }

    public void setWelcomePart(WelcomePart welcomePart) {
        this.welcomePart = welcomePart;
    }

    //endregion


    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", user=" + user +
                ", name='" + name + '\'' +
                ", path='" + path + '\'' +
                '}';
    }
}
