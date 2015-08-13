package com.becomingone.repository.webpage;

import com.becomingone.model.user.User;
import com.becomingone.model.webpage.WebPage;
import com.becomingone.model.webpage.WelcomePart;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Davy on 8/13/2015.
 */
public interface WelcomePartRepository extends JpaRepository<WelcomePart, Long> {
    WelcomePart findByWebPage(WebPage webPage);
}
