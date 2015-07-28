package com.becomingone.service.user;

import com.becomingone.dto.user.UserProfileForm;
import com.becomingone.model.user.User;
import com.becomingone.model.user.UserProfile;
import com.becomingone.repository.user.UserProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Davy on 7/28/2015.
 */
@Service
public class RepositoryUserProfileService implements UserProfileService {

    private UserProfileRepository repository;

    @Autowired
    public RepositoryUserProfileService(UserProfileRepository repository) {
        this.repository = repository;
    }

    @Transactional
    @Override
    public UserProfile create(UserProfileForm form, User user) {
        UserProfile profile = new UserProfile();

        profile.setLocation(form.getLocation());
        profile.setWeddingDate(form.getDate());
        profile.setUser(user);
        profile.setBridesFirstName(form.getBridesFirstName());
        profile.setBridesLastName(form.getBridesLastName());
        profile.setGroomsFirstName(form.getGroomsFirstName());
        profile.setGroomsLastName(form.getGroomsLastName());

        try {
            return repository.save(profile);
        }
        catch (Exception e) {
            System.err.print(e);
            return profile;
        }
    }
}
