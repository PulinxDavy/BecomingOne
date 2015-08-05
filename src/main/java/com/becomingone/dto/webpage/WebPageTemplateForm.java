package com.becomingone.dto.webpage;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Size;

/**
 * Created by Davy on 8/5/2015.
 */
public class WebPageTemplateForm {
    @NotEmpty
    @Size(max = 100)
    private String template;

    public WebPageTemplateForm() {

    }

    //region Getters & Setters
    public String getTemplate() {
        return template;
    }

    public void setTemplate(String template) {
        this.template = template;
    }
    //endregion


    @Override
    public String toString() {
        return "WebPageTemplateForm{" +
                "templateName='" + template + '\'' +
                '}';
    }
}
