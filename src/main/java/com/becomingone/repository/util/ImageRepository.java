package com.becomingone.repository.util;

import com.becomingone.model.user.User;
import com.becomingone.model.util.Image;
import com.becomingone.model.webpage.WelcomePart;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by Davy on 8/13/2015.
 */
public interface ImageRepository extends JpaRepository<Image, Long> {
    List<Image> findByUser(User user);
    Image findByWelcomePart(WelcomePart welcomePart);
}
