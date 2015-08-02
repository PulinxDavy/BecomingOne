package com.becomingone.repository.webpage;

import com.becomingone.model.user.User;
import com.becomingone.model.webpage.WebPage;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Davy on 8/2/2015.
 */
public interface WebPageRepository extends JpaRepository<WebPage, Long> {
    WebPage findByUser(User user);
}
