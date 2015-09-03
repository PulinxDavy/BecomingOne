package com.becomingone.controller.user;

import com.becomingone.model.main.webpage.WelcomePart;
import com.becomingone.util.userdata.CreateProfileDetails;
import com.becomingone.dto.webpage.WelcomeForm;
import com.becomingone.model.main.user.User;
import com.becomingone.model.main.util.Image;
import com.becomingone.model.main.webpage.WebPage;
import com.becomingone.repository.main.user.UserProfileRepository;
import com.becomingone.repository.main.user.UserRepository;
import com.becomingone.repository.main.util.ImageRepository;
import com.becomingone.repository.main.webpage.WebPageRepository;
import com.becomingone.service.main.webpage.WebPageService;
import org.joda.time.DateTime;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;
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

        CreateProfileDetails profileDetails = new CreateProfileDetails(userRepository, profileRepository, principal, model);
        model = profileDetails.getModel();

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


        CreateProfileDetails profileDetails = new CreateProfileDetails(userRepository, profileRepository, principal, model);
        model = profileDetails.getModel();

        return VIEW_TEMPLATE;
    }

    @RequestMapping(value = "/user/profile/template", method = RequestMethod.GET)
    public String chooseTemplateWebPage(@RequestParam("template") int template, Model model, Principal principal) {
        WelcomeForm welcomeForm = new WelcomeForm();

        CreateProfileDetails profileDetails = new CreateProfileDetails(userRepository, profileRepository, principal, model);
        model = profileDetails.getModel();

        //TODO adding form to model

        String test = "you have chosen template " + template;

        model.addAttribute("test", test);

        return VIEW;
    }

    @RequestMapping(value = "/user/profile/pictures", method = RequestMethod.GET)
    public String showMyPictures(HttpServletRequest request, Model model, Principal principal) {
        User user = userRepository.findByEmail(principal.getName());
        List<Image> images = imageRepository.findByUser(user);

        for (Image image : images) {
            checkImageDir(request, image);
        }

        CreateProfileDetails profileDetails = new CreateProfileDetails(userRepository, profileRepository, principal, model);
        model = profileDetails.getModel();

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

    private void checkImageDir(HttpServletRequest request, Image image) {
        try {
            File file = new File(image.getPath());
            if (!file.exists()) {
                File dir = new File(createFile(request, image));
                BufferedOutputStream stream = new BufferedOutputStream(
                    new FileOutputStream(dir));
                stream.write(image.getBytes());
                stream.close();
            }
        } catch (Exception e) {
            System.out.print(e.getMessage());
        }
    }

    private String createFile(HttpServletRequest request, Image image) {
        String realPath = request.getSession().getServletContext().getRealPath("/");

        String[] array = image.getPath().split("/");
        String email = array[4];
        String year = array[5];
        String month = array[6];
        String day = array[7];
        String name = array[8];

        String relativePath = "/uploads/" + email + "/" + year + "/" + month + "/" + day;

        File dir = new File(realPath + relativePath);
        if (!dir.exists())
            dir.mkdirs();

        return realPath + relativePath + File.separator + name;
    }
}
