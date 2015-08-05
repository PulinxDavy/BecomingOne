package com.becomingone.controller.user;

import com.becomingone.dto.webpage.WebPageTemplateForm;
import com.becomingone.model.user.User;
import com.becomingone.model.user.UserProfile;
import com.becomingone.model.webpage.WebPage;
import com.becomingone.repository.user.UserProfileRepository;
import com.becomingone.repository.user.UserRepository;
import com.becomingone.repository.webpage.WebPageRepository;
import com.becomingone.service.user.UserProfileService;
import com.becomingone.service.webpage.WebPageService;
import com.sun.xml.internal.bind.v2.TODO;
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.inject.Inject;
import java.security.Principal;
import java.util.Date;

/**
 * Created by Davy on 8/2/2015.
 */
@Controller
public class ProfileWebsiteController {

    protected static final String VIEW = "user/profile/website";
    protected static final String VIEW_TEMPLATE = "user/profile/template";

    private final WebPageRepository repository;
    private final WebPageService service;
    private final UserRepository userRepository;
    private final UserProfileRepository profileRepository;

    private Days count;
    private String weddingDate;

    @Inject
    public ProfileWebsiteController(UserRepository userRepository, WebPageRepository repository, WebPageService service, UserProfileRepository profileRepository) {
        this.repository = repository;
        this.service = service;
        this.userRepository = userRepository;
        this.profileRepository = profileRepository;
    }

    @RequestMapping(value = "/user/profile/website", method = RequestMethod.GET)
    public String showProfileWebsitePage(Model model, Principal principal) {
        User user = userRepository.findByEmail(principal.getName());
        UserProfile profile = profileRepository.findByUser(user);
        WebPage webPage = null;

        createProfileDetails(profile);

        model.addAttribute("profile", profile);
        model.addAttribute("countdown", count.getDays());
        model.addAttribute("weddingDate", weddingDate);

        if (user.getWebPage() != null) {
            webPage = repository.findByUser(user);
        }

        if (webPage != null) {
            // TODO retrieve data that has to be used to fill the main profile page.

            return VIEW;
        } else {
            return VIEW_TEMPLATE;
        }
    }

    @RequestMapping(value = "/user/profile/design", method = RequestMethod.GET)
    public String chooseNewTemplateWebPage(Model model, Principal principal) {
        User user = userRepository.findByEmail(principal.getName());
        UserProfile profile = profileRepository.findByUser(user);

        createProfileDetails(profile);

        model.addAttribute("profile", profile);
        model.addAttribute("countdown", count.getDays());
        model.addAttribute("weddingDate", weddingDate);

        return VIEW_TEMPLATE;
    }

    @RequestMapping(value = "/user/profile/template", method = RequestMethod.GET)
    public String chooseTemplateWebPage(@RequestParam("template") int template, Model model) {

        String test = "you have chosen template " + template;

        model.addAttribute("test", test);

        return VIEW;
    }

    public void createProfileDetails(UserProfile profile) {
        Date actualDate = profile.getWeddingDate();
        DateTime date = new DateTime(actualDate);
        DateTime now = DateTime.now();
        count = Days.daysBetween(now.toLocalDate(), date.toLocalDate());

        weddingDate = date.dayOfMonth().getAsShortText() + " " + date.monthOfYear().getAsText() + " " + date.year().getAsShortText();
    }
}
