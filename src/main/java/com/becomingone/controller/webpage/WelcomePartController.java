package com.becomingone.controller.webpage;

import com.becomingone.dto.webpage.WelcomeForm;
import com.becomingone.model.main.user.User;
import com.becomingone.model.main.util.Image;
import com.becomingone.model.main.webpage.WebPage;
import com.becomingone.model.main.webpage.WelcomePart;
import com.becomingone.repository.main.user.UserRepository;
import com.becomingone.repository.main.util.ImageRepository;
import com.becomingone.repository.main.webpage.WebPageRepository;
import com.becomingone.service.main.webpage.WelcomePartService;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

import javax.inject.Inject;
import javax.validation.Valid;
import java.security.Principal;

/**
 * Created by TOSHIBA on 9/4/2015.
 */
@Controller
public class WelcomePartController {

    protected static String VIEW = "user/profile/webpage/website";

    private final WebPageRepository repository;
    private final UserRepository userRepository;
    private final ImageRepository imageRepository;
    private final WelcomePartService service;

    @Inject
    public WelcomePartController(WebPageRepository repository, UserRepository userRepository, ImageRepository imageRepository, WelcomePartService service) {
        this.repository = repository;
        this.service = service;
        this.userRepository = userRepository;
        this.imageRepository = imageRepository;
    }

    /*@RequestMapping(value = "/webpage/welcome", method = RequestMethod.POST)
    public String createWelcomePart(, BindingResult result, Principal principal) {

        //TODO create form in html way. Look into validation and change service. Delete DTO.


        User user = userRepository.findByEmail(principal.getName());
        WebPage page = repository.findByUser(user);
        Long imageId = Long.parseLong(form.getImage());
        Image image = imageRepository.findOne(imageId);

        if (result.hasErrors()) {
            return "redirect:/user/profile/website";
        }

        if (page.getWelcomePart() == null) {
            service.create(form, page, image);
        }

        return "redirect:/user/profile/website";
    }*/
}
