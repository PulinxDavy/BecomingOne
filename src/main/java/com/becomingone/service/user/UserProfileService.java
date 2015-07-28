package com.becomingone.service.user;

import com.becomingone.dto.user.UserProfileForm;
import com.becomingone.model.user.User;
import com.becomingone.model.user.UserProfile;

/**
 * Created by Davy on 7/28/2015.
 */
public interface UserProfileService {
    UserProfile create(UserProfileForm form, User user);
}
