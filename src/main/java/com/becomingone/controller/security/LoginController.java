package com.becomingone.controller.security;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Davy on 7/18/2015.
 */
@Controller
public class LoginController {

    protected static final String VIEW_NAME_LOGIN_PAGE = "user/login";

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLoginPage() {
        return VIEW_NAME_LOGIN_PAGE;
    }
}
