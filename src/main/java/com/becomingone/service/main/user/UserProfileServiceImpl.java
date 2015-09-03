package com.becomingone.service.main.user;

import com.becomingone.dto.user.UserProfileForm;
import com.becomingone.model.main.user.SexualityType;
import com.becomingone.model.main.user.User;
import com.becomingone.model.main.user.UserProfile;
import com.becomingone.repository.main.user.UserProfileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Davy on 7/28/2015.
 */
@Service
public class UserProfileServiceImpl implements UserProfileService {

    private UserProfileRepository repository;

    @Autowired
    public UserProfileServiceImpl(UserProfileRepository repository) {
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
        if (SexualityType.valueOf(form.getSexualityType().toUpperCase()) == SexualityType.HETERO)
            profile.setSexualityType(SexualityType.HETERO);
        else if (SexualityType.valueOf(form.getSexualityType().toUpperCase()) == SexualityType.HOMO)
            profile.setSexualityType(SexualityType.HOMO);
        else if (SexualityType.valueOf(form.getSexualityType().toUpperCase()) == SexualityType.LESBIAN)
            profile.setSexualityType(SexualityType.LESBIAN);

        try {
            return repository.save(profile);
        }
        catch (Exception e) {
            System.err.print(e.getStackTrace());
            return profile;
        }
    }
}
