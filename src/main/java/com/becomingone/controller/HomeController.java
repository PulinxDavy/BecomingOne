package com.becomingone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Davy on 7/18/2015.
 */
@Controller
public class HomeController {

    protected static final String VIEW = "index";

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showHomePage() {
        return VIEW;
    }
}
