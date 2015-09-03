package com.becomingone.service.main.webpage;

import com.becomingone.dto.webpage.WelcomeForm;
import com.becomingone.model.main.util.Image;
import com.becomingone.model.main.webpage.WebPage;
import com.becomingone.model.main.webpage.WelcomePart;

/**
 * Created by Davy on 8/13/2015.
 */
public interface WelcomePartService {
    WelcomePart create(WelcomeForm form, WebPage webPage, Image image);
}
