package com.becomingone.repository.user;

import com.becomingone.model.user.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Davy on 7/18/2015.
 */
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
