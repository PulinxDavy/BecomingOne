package com.becomingone.service.main.webpage;

import com.becomingone.model.main.user.User;
import com.becomingone.model.main.webpage.WebPage;
import com.becomingone.model.main.webpage.WebTemplate;

/**
 * Created by Davy on 8/2/2015.
 */
public interface WebPageService {
    WebPage create(WebTemplate template, User user);
}
