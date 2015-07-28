package com.becomingone.dto.user;

import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.DateTime;

import javax.validation.constraints.Size;
import java.util.Date;

/**
 * Created by Davy on 7/27/2015.
 */
public class UserProfileForm {

    @NotEmpty
    @Size(max = 100)
    private String bridesFirstName;

    @NotEmpty
    @Size(max = 100)
    private String bridesLastName;

    @NotEmpty
    @Size(max = 100)
    private String groomsFirstName;

    @NotEmpty
    @Size(max = 100)
    private String groomsLastName;

    private DateTime date;

    @Size(max = 255)
    private String location;

    public UserProfileForm() {

    }

    //region Getters & Setters
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

    public String getGroomsLastName() {
        return groomsLastName;
    }

    public void setGroomsLastName(String groomsLastName) {
        this.groomsLastName = groomsLastName;
    }

    public DateTime getDate() {
        return date;
    }

    public void setDate(DateTime date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
    //endregion


    @Override
    public String toString() {
        return "UserProfileForm{" +
                "bridesFirstName='" + bridesFirstName + '\'' +
                ", bridesLastName='" + bridesLastName + '\'' +
                ", groomsFirstName='" + groomsFirstName + '\'' +
                ", groomsLastName='" + groomsLastName + '\'' +
                ", weddingDate=" + date +
                ", location='" + location + '\'' +
                '}';
    }
}
