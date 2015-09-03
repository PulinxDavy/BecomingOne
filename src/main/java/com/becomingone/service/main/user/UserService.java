package com.becomingone.service.main.user;

import com.becomingone.dto.user.RegistrationForm;
import com.becomingone.model.main.user.User;
import com.becomingone.validation.user.DuplicateEmailException;

/**
 * Created by Davy on 7/18/2015.
 */
public interface UserService {
    User registerNewUserAccount(RegistrationForm userAccountData) throws DuplicateEmailException;
}
