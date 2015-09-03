package com.becomingone.dto.user;

import org.hibernate.validator.constraints.NotEmpty;

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

    private Date date;

    @Size(max = 255)
    private String location;

    private String sexualityType;

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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getSexualityType() {
        return sexualityType;
    }

    public void setSexualityType(String sexualityType) {
        this.sexualityType = sexualityType;
    }

    //endregion


    @Override
    public String toString() {
        return "UserProfileForm{" +
                "bridesFirstName='" + bridesFirstName + '\'' +
                ", bridesLastName='" + bridesLastName + '\'' +
                ", groomsFirstName='" + groomsFirstName + '\'' +
                ", groomsLastName='" + groomsLastName + '\'' +
                ", date=" + date +
                ", location='" + location + '\'' +
                ", sexualityType=" + sexualityType +
                '}';
    }
}
