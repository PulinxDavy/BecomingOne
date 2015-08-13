package com.becomingone.service.webpage;

import com.becomingone.dto.webpage.WelcomeForm;
import com.becomingone.model.webpage.WebPage;
import com.becomingone.model.webpage.WelcomePart;

/**
 * Created by Davy on 8/13/2015.
 */
public interface WelcomePartService {
    WelcomePart create(WelcomeForm form, WebPage webPage);
}
