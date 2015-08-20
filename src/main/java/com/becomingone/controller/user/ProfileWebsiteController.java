package com.becomingone.controller.user;

import com.becomingone.dto.webpage.WelcomeForm;
import com.becomingone.model.user.User;
import com.becomingone.model.user.UserProfile;
import com.becomingone.model.util.Image;
import com.becomingone.model.webpage.WebPage;
import com.becomingone.repository.user.UserProfileRepository;
import com.becomingone.repository.user.UserRepository;
import com.becomingone.repository.util.ImageRepository;
import com.becomingone.repository.webpage.WebPageRepository;
import com.becomingone.service.webpage.WebPageService;
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
import java.util.List;

/**
 * Created by Davy on 8/2/2015.
 */
@Controller
public class ProfileWebsiteController {

    protected static final String VIEW = "user/profile/webpage/website";
    protected static final String VIEW_TEMPLATE = "user/profile/webpage/template";
    protected static final String VIEW_PICTURES = "user/profile/pictures/pictures";

    private final WebPageRepository repository;
    private final WebPageService service;
    private final UserRepository userRepository;
    private final UserProfileRepository profileRepository;
    private final ImageRepository imageRepository;

    private Days count;
    private String weddingDate;

    @Inject
    public ProfileWebsiteController(UserRepository userRepository,
                                    WebPageRepository repository,
                                    WebPageService service,
                                    UserProfileRepository profileRepository,
                                    ImageRepository imageRepository) {
        this.repository = repository;
        this.service = service;
        this.userRepository = userRepository;
        this.profileRepository = profileRepository;
        this.imageRepository = imageRepository;
    }

    @RequestMapping(value = "/user/profile/website", method = RequestMethod.GET)
    public String showProfileWebsitePage(Model model, Principal principal) {
        User user = userRepository.findByEmail(principal.getName());
        WebPage webPage = null;

        createProfileDetails(principal, model);

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


        createProfileDetails(principal, model);

        return VIEW_TEMPLATE;
    }

    @RequestMapping(value = "/user/profile/template", method = RequestMethod.GET)
    public String chooseTemplateWebPage(@RequestParam("template") int template, Model model, Principal principal) {
        WelcomeForm welcomeForm = new WelcomeForm();

        //TODO adding form to model

        String test = "you have chosen template " + template;

        model.addAttribute("test", test);

        createProfileDetails(principal, model);

        return VIEW;
    }

    @RequestMapping(value = "/user/profile/pictures", method = RequestMethod.GET)
    public String showMyPictures(Model model, Principal principal) {
        User user = userRepository.findByEmail(principal.getName());
        List<Image> images = imageRepository.findByUser(user);

        createProfileDetails(principal, model);
        model.addAttribute("images", images);

        return VIEW_PICTURES;
    }

    @RequestMapping(value = "/user/profile/pictures/delete", method = RequestMethod.GET)
    public String deleteMyPicture(@RequestParam("pic") Long id, Principal principal) {
        User user = userRepository.findByEmail(principal.getName());
        Image image = imageRepository.findOne(id);

        imageRepository.delete(image);

        return "redirect:/user/profile/pictures";
    }

    public void createProfileDetails(Principal principal, Model model) {
        User user = userRepository.findByEmail(principal.getName());
        UserProfile profile = profileRepository.findByUser(user);

        Date actualDate = profile.getWeddingDate();
        DateTime date = new DateTime(actualDate);
        DateTime now = DateTime.now();
        count = Days.daysBetween(now.toLocalDate(), date.toLocalDate());

        weddingDate = date.dayOfMonth().getAsShortText() + " " + date.monthOfYear().getAsText() + " " + date.year().getAsShortText();

        model.addAttribute("profile", profile);
        model.addAttribute("countdown", count.getDays());
        model.addAttribute("weddingDate", weddingDate);
    }
}
