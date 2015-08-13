package com.becomingone.repository.util;

import com.becomingone.model.user.User;
import com.becomingone.model.util.Image;
import com.becomingone.model.webpage.WelcomePart;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Davy on 8/13/2015.
 */
public interface ImageRepository extends JpaRepository<Image, Long> {
    Image findByUser(User user);
    Image findByWelcomePart(WelcomePart welcomePart);
}
