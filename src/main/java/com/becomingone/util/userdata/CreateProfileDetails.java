package com.becomingone.util.userdata;

import com.becomingone.model.main.user.User;
import com.becomingone.model.main.user.UserProfile;
import com.becomingone.repository.main.user.UserProfileRepository;
import com.becomingone.repository.main.user.UserRepository;
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.springframework.ui.Model;

import java.security.Principal;
import java.util.Date;

/**
 * Created by TOSHIBA on 8/23/2015.
 */
public class CreateProfileDetails {

    private final UserRepository userRepository;
    private final UserProfileRepository profileRepository;

    Model model;

    public CreateProfileDetails(UserRepository userRepository, UserProfileRepository profileRepository, Principal principal, Model model) {

        this.profileRepository = profileRepository;
        this.userRepository = userRepository;
        this.model = model;

        User user = userRepository.findByEmail(principal.getName());
        UserProfile profile = profileRepository.findByUser(user);

        Date actualDate = profile.getWeddingDate();
        DateTime date = new DateTime(actualDate);
        DateTime now = DateTime.now();
        Days count = Days.daysBetween(now.toLocalDate(), date.toLocalDate());

        String weddingDate = date.dayOfMonth().getAsShortText() + " " + date.monthOfYear().getAsText() + " " + date.year().getAsShortText();

        model.addAttribute("profile", profile);
        model.addAttribute("countdown", count.getDays());
        model.addAttribute("weddingDate", weddingDate);
    }

    public Model getModel() {
        return model;
    }

    public void setModel(Model model) {
        this.model = model;
    }
}
