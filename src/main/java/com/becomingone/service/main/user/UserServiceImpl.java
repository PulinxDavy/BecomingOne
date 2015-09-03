package com.becomingone.service.main.user;

import com.becomingone.dto.user.RegistrationForm;
import com.becomingone.model.main.user.User;
import com.becomingone.repository.main.user.UserRepository;
import com.becomingone.validation.user.DuplicateEmailException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Davy on 7/18/2015.
 */
@Service
public class UserServiceImpl implements UserService {

    private PasswordEncoder passwordEncoder;

    private UserRepository repository;

    @Autowired
    public UserServiceImpl(PasswordEncoder passwordEncoder, UserRepository repository) {
        this.passwordEncoder = passwordEncoder;
        this.repository = repository;
    }

    @Transactional
    @Override
    public User registerNewUserAccount(RegistrationForm userAccountData) throws DuplicateEmailException {

        if (emailExist(userAccountData.getEmail())) {
            throw new DuplicateEmailException("The email address: " + userAccountData.getEmail() + " is already in use.");
        }

        String encodedPassword = encodePassword(userAccountData);

        User.Builder user = User.getBuilder()
                .email(userAccountData.getEmail())
                .firstName(userAccountData.getFirstName())
                .lastName(userAccountData.getLastName())
                .password(encodedPassword);

        if (userAccountData.isSocialSignIn()) {
            user.signInProvider(userAccountData.getSignInProvider());
        }

        User registered = user.build();

        return repository.save(registered);
    }

    private boolean emailExist(String email) {

        User user = repository.findByEmail(email);

        if (user != null) {
            return true;
        }

        return false;
    }

    private String encodePassword(RegistrationForm dto) {
        String encodedPassword = null;

        if (dto.isNormalRegistration()) {
            encodedPassword = passwordEncoder.encode(dto.getPassword());
        }

        return encodedPassword;
    }
}
