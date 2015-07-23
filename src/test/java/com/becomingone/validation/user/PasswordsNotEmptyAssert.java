package com.becomingone.validation.user;

import javax.validation.ConstraintViolation;
import java.util.Set;

/**
 * Created by Davy on 7/19/2015.
 */
public class PasswordsNotEmptyAssert extends ConstraintViolationAssert<PasswordsNotEmptyDTO> {

    private static final String VALIDATION_ERROR_MESSAGE = "PasswordsNotEmpty";

    public PasswordsNotEmptyAssert(Set<ConstraintViolation<PasswordsNotEmptyDTO>> actual) {
        super(PasswordsNotEmptyAssert.class, actual);
    }

    public static PasswordsNotEmptyAssert assertThat(Set<ConstraintViolation<PasswordsNotEmptyDTO>> actual) {
        return new PasswordsNotEmptyAssert(actual);
    }

    @Override
    protected String getErrorMessage() {
        return VALIDATION_ERROR_MESSAGE;
    }
}
