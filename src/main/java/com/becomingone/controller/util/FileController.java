package com.becomingone.controller.util;

import com.becomingone.model.user.User;
import com.becomingone.model.util.Image;
import com.becomingone.repository.user.UserRepository;
import com.becomingone.repository.util.ImageRepository;
import com.becomingone.service.util.ImageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.inject.Inject;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.Principal;

/**
 * Created by Davy on 8/5/2015.
 */
@Controller
@RequestMapping("/controller")
public class FileController {

    private final ImageRepository repository;
    private final UserRepository userRepository;
    private final ImageService service;

    @Inject
    public FileController(ImageRepository repository, ImageService service, UserRepository userRepository) {
        this.repository = repository;
        this.service = service;
        this.userRepository = userRepository;
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public @ResponseBody
    String uploadFileHandler(@RequestParam("name") String name,
                             @RequestParam("file") MultipartFile file,
                             Principal principal) {

        User user = userRepository.findByEmail(principal.getName());

        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();

                // Creating the directory to store file
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "pictures" + File.separator + user.getEmail());
                if (!dir.exists())
                    dir.mkdirs();

                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();

                // Create Image Object and link path
                String path = dir.getAbsolutePath() + File.separator + name;
                service.create(user, name, path);

                return "You successfully uploaded file: " + name;
            } catch (Exception e) {
                return "You failed to upload file: " + name + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload file: " + name
                    + " because the file was empty.";
        }
    }
}
