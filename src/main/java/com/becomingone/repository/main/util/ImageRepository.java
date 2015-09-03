package com.becomingone.repository.main.util;

import com.becomingone.model.main.user.User;
import com.becomingone.model.main.util.Image;
import com.becomingone.model.main.webpage.WelcomePart;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by Davy on 8/13/2015.
 */
public interface ImageRepository extends JpaRepository<Image, Long> {
    List<Image> findByUser(User user);
    Image findByWelcomePart(WelcomePart welcomePart);
}
