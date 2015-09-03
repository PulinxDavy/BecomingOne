package com.becomingone.model.main.user;

import com.becomingone.model.main.BaseEntity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Davy on 7/27/2015.
 */
@Entity
@Table(name = "user_profiles")
public class UserProfile extends BaseEntity<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne
    private User user;

    @Column(name = "brides_first_name", length = 100, nullable = true)
    private String bridesFirstName;

    @Column(name = "brides_last_name", length = 100, nullable = true)
    private String bridesLastName;

    @Column(name = "grooms_first_name", length = 100, nullable = true)
    private String groomsFirstName;

    @Column(name = "grooms_last_name", length = 100, nullable = true)
    private String groomsLastName;

    @Column(name = "wedding_date", nullable = true)
    private Date weddingDate;

    @Column(name = "wedding_location", length = 255, nullable = true)
    private String Location;

    @Enumerated(EnumType.STRING)
    @Column(name = "sexuality_type", length = 20, nullable = false)
    private SexualityType sexualityType;

    //region Getters & Setters
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

    public String getBridesFirstName() {
        return bridesFirstName;
    }

    public void setBridesFirstName(String bridesFirstName) {
        this.bridesFirstName = bridesFirstName;
    }

    public String getBridesLastName() {
        return bridesLastName;
    }

    public void setBridesLastName(String bridesLastName) {
        this.bridesLastName = bridesLastName;
    }

    public String getGroomsFirstName() {
        return groomsFirstName;
    }

    public void setGroomsFirstName(String groomsFirstName) {
        this.groomsFirstName = groomsFirstName;
    }

    public Date getWeddingDate() {
        return weddingDate;
    }

    public void setWeddingDate(Date weddingDate) {
        this.weddingDate = weddingDate;
    }

    public String getGroomsLastName() {
        return groomsLastName;
    }

    public void setGroomsLastName(String groomsLastName) {
        this.groomsLastName = groomsLastName;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String location) {
        Location = location;
    }

    public SexualityType getSexualityType() {
        return sexualityType;
    }

    public void setSexualityType(SexualityType sexualityType) {
        this.sexualityType = sexualityType;
    }
    //endregion
}
