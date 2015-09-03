package com.becomingone.repository.main.webpage;

import com.becomingone.model.main.webpage.WebPage;
import com.becomingone.model.main.webpage.WelcomePart;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Davy on 8/13/2015.
 */
public interface WelcomePartRepository extends JpaRepository<WelcomePart, Long> {
    WelcomePart findByWebPage(WebPage webPage);
}
