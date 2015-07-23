package com.becomingone.validation.user;

/**
 * Created by Davy on 7/18/2015.
 */
public class DuplicateEmailException extends Exception {
    public DuplicateEmailException(String message) {
        super(message);
    }
}
