package com.becomingone.dto.webpage;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;

/**
 * Created by Davy on 8/5/2015.
 */
public class WelcomeForm {

    @NotEmpty
    @Size(max = 255)
    private String title;

    private String image;


}
