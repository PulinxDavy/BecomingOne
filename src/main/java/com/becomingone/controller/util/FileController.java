package com.becomingone.controller.util;

import com.becomingone.model.main.user.User;
import com.becomingone.model.main.util.Image;
import com.becomingone.repository.main.user.UserProfileRepository;
import com.becomingone.repository.main.user.UserRepository;
import com.becomingone.repository.main.util.ImageRepository;
import com.becomingone.service.main.util.ImageService;
import com.becomingone.util.userdata.CreateProfileDetails;
import org.joda.time.DateTime;
import org.joda.time.Days;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;
import java.util.*;
import java.util.regex.Pattern;

/**
 * Created by Davy on 8/5/2015.
 */
@Controller
public class FileController {

    protected static final String VIEW = "user/profile/pictures/pictures";

    private final UserRepository userRepository;
    private final UserProfileRepository profileRepository;
    private final ImageService service;
    private final ImageRepository imageRepository;

    private Map<String, String> errorMessages = new HashMap<>();

    private Days count;
    private String weddingDate;

    @Inject
    public FileController(ImageService service, UserRepository userRepository, ImageRepository imageRepository, UserProfileRepository profileRepository) {
        this.service = service;
        this.userRepository = userRepository;
        this.imageRepository = imageRepository;
        this.profileRepository = profileRepository;
    }

    @RequestMapping(value ="/upload", method = RequestMethod.GET)
    public String uploadAjax(Model model, Principal principal){
        User user = userRepository.findByEmail(principal.getName());
        List<Image> images = imageRepository.findByUser(user);

        CreateProfileDetails profileDetails = new CreateProfileDetails(userRepository, profileRepository, principal, model);
        model = profileDetails.getModel();

        model.addAttribute("images", images);
        model.addAttribute("errors", errorMessages);

        return VIEW;
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String uploadFileHandler(@RequestParam("file[]") MultipartFile[] files, HttpServletRequest request, Principal principal) {

        User user = userRepository.findByEmail(principal.getName());

        String storedFolderLocation = createStoredFolder(request, user);

        for (MultipartFile file : files) {
            File f = new File(file.getOriginalFilename());
            if (isFileTypeImage(f.getName())) {
                String uploadedFileName = f.getName();
                try {
                    byte[] bytes = file.getBytes();

                    String storedFileLocation = storedFolderLocation + File.separator + uploadedFileName;
                    // Create the file on server
                    File serverFile = new File(storedFileLocation);
                    BufferedOutputStream stream = new BufferedOutputStream(
                            new FileOutputStream(serverFile));
                    stream.write(bytes);
                    stream.close();


                    String url = getDomainName(request)
                            + getRelativePath(user) + "/" + uploadedFileName;

                    service.create(user, uploadedFileName, url, bytes);

                } catch (Exception e) {
                    errorMessages.put(f.getName(), e.getMessage());
                    return "redirect:/upload";
                }
            } else {
                errorMessages.put(f.getName(), "Make sure the file is one of the following types. jpg, jpeg, png, gif or bmp");
                return "redirect:/upload";
            }
        }
        return "redirect:/upload";
    }

    private String createStoredFolder(HttpServletRequest request, User user) {
        String realPath = request.getSession().getServletContext().getRealPath("/");
        String relativePath = getRelativePath(user);
        String storedFolderLocation = realPath + relativePath;
        File dir = new File(storedFolderLocation);
        if (!dir.exists())
            dir.mkdirs();
        return storedFolderLocation;
    }

    private boolean isFileTypeImage(String fileName) {
        String imagePattern = "([^\\s]+(\\.(?i)(jpg|jpeg|png|gif|bmp))$)";
        return Pattern.compile(imagePattern).matcher(fileName).matches();
    }

    private String getRelativePath(User user) {
        DateTime dateTime = new DateTime();
        return "/uploads/" + user.getEmail() + "/" + dateTime.getYear() + "/" + dateTime.getMonthOfYear() + "/" + dateTime.getDayOfMonth();
    }
    private String getDomainName(HttpServletRequest request) {
        return request.getProtocol().toLowerCase().replaceAll("[0-9./]", "") + "://" +
                request.getServerName() + ":" + request.getServerPort();
    }
}
