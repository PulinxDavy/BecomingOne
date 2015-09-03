package com.becomingone.repository.main.webpage;

import com.becomingone.model.main.user.User;
import com.becomingone.model.main.webpage.WebPage;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Davy on 8/2/2015.
 */
public interface WebPageRepository extends JpaRepository<WebPage, Long> {
    WebPage findByUser(User user);
}
