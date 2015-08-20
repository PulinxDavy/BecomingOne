package com.becomingone.repository.user;

import com.becomingone.model.user.User;
import com.becomingone.model.user.UserProfile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Davy on 7/28/2015.
 */
public interface UserProfileRepository extends CrudRepository<UserProfile, Long> {
    UserProfile findByUser(User user);
}
