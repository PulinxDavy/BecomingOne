package com.becomingone.model.webpage;

import com.becomingone.model.BaseEntity;
import com.becomingone.model.user.User;

import javax.persistence.*;

/**
 * Created by Davy on 8/2/2015.
 */
@Entity
@Table(name = "user_webpages")
public class WebPage extends BaseEntity<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne
    private User user;

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
    //endregion
}