package com.becomingone.controller.user;

import com.becomingone.dto.user.UserProfileForm;
import com.becomingone.model.main.user.User;
import com.becomingone.model.main.user.UserProfile;
import com.becomingone.repository.main.user.UserProfileRepository;
import com.becomingone.repository.main.user.UserRepository;
import com.becomingone.service.main.user.UserProfileService;
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;
import javax.validation.Valid;
import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Davy on 7/26/2015.
 */
@Controller
public class UserProfileController {

    protected static final String VIEW = "user/profile";
    public static final String VIEW_CREATE_PROFILE = "user/profile/create";

    private final UserProfileRepository repository;
    private final UserProfileService service;
    private final UserRepository userRepository;

    @Inject
    public UserProfileController(UserRepository userRepository, UserProfileRepository repository, UserProfileService service) {
        this.repository = repository;
        this.service = service;
        this.userRepository = userRepository;
    }

    @RequestMapping(value = "/user/profile", method = RequestMethod.GET)
    public String showUserProfile(Model model, Principal principal) {

        User user = userRepository.findByEmail(principal.getName());
        UserProfile profile = null;

        if (user.getUserProfile() != null) {
            profile = repository.findByUser(user);
        }

        if (profile != null) {
            Date actualDate = profile.getWeddingDate();
            DateTime date = new DateTime(actualDate);
            DateTime now = DateTime.now();
            Days count = Days.daysBetween(now.toLocalDate(), date.toLocalDate());

            String weddingDate = date.dayOfMonth().getAsShortText() + " " + date.monthOfYear().getAsText() + " " + date.year().getAsShortText();

            model.addAttribute("profile", profile);
            model.addAttribute("countdown", count.getDays());
            model.addAttribute("weddingDate", weddingDate);

            return VIEW;
        } else {
            UserProfileForm form = new UserProfileForm();

            model.addAttribute("profile", form);

            return VIEW_CREATE_PROFILE;
        }
    }

    @RequestMapping(value = "/user/profile/create", method = RequestMethod.POST)
    public String createProfile(@Valid @ModelAttribute("profile") UserProfileForm profileData,
                                BindingResult result, Principal principal) {
        if (result.hasErrors()) {
            return VIEW_CREATE_PROFILE;
        }

        User user = userRepository.findByEmail(principal.getName());

        if (user.getUserProfile() == null) {
            service.create(profileData, user);
        }

        return "redirect:/user/profile";
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
        // You can register other Custom Editors with the WebDataBinder, like CustomNumberEditor for Integers and Longs, or StringTrimmerEditor for Strings
    }
}
