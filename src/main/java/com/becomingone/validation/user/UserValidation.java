package com.becomingone.validation.user;

import com.becomingone.dto.user.RegistrationForm;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by Davy on 24/07/2015.
 */
public class UserValidation implements Validator {

    @Override
    public boolean supports(Class clazz){
        return RegistrationForm.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "field.required");
    }
}
