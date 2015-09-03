package com.becomingone.repository.main.user;

import com.becomingone.model.main.user.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Davy on 7/18/2015.
 */
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
