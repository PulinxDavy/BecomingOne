package com.becomingone.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Davy on 8/2/2015.
 */
@Controller
public class ProfileWebsiteController {

    protected static final String VIEW = "user/profile/website";
    protected static final String VIEW_TEMPLATE = "user/profile/template";

    @RequestMapping(value = "/user/profile/website", method = RequestMethod.GET)
    public String showProfileWebsitePage() {
        return VIEW;
    }

    @RequestMapping(value = "/user/profile/template", method = RequestMethod.GET)
    public String showTemplateWebsitePage() {
        return VIEW_TEMPLATE;
    }
}
