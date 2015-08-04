package com.becomingone.service.webpage;

import com.becomingone.model.user.User;
import com.becomingone.model.webpage.WebPage;
import com.becomingone.model.webpage.WebTemplate;

/**
 * Created by Davy on 8/2/2015.
 */
public interface WebPageService {
    WebPage create(WebTemplate template, User user);
}
