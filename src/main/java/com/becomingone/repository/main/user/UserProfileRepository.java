package com.becomingone.repository.main.user;

import com.becomingone.model.main.user.User;
import com.becomingone.model.main.user.UserProfile;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Davy on 7/28/2015.
 */
public interface UserProfileRepository extends CrudRepository<UserProfile, Long> {
    UserProfile findByUser(User user);
}
