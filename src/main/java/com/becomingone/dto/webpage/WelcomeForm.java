package com.becomingone.dto.webpage;

import com.becomingone.model.main.util.Image;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;

/**
 * Created by Davy on 8/5/2015.
 */
public class WelcomeForm {

    @NotEmpty
    @Size(max = 255)
    private String title;

    private String text;

    private String image;

    //region Getters & Setters
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    //endregion


    @Override
    public String toString() {
        return "WelcomeForm{" +
                "title='" + title + '\'' +
                ", text='" + text + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
