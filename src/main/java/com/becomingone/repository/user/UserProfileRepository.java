package com.becomingone.repository.user;

import com.becomingone.model.user.User;
import com.becomingone.model.user.UserProfile;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Davy on 7/28/2015.
 */
public interface UserProfileRepository extends JpaRepository<UserProfile, Long> {
    UserProfile findByUser(User user);
}
