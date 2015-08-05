package com.becomingone.controller.helpers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by Davy on 8/5/2015.
 */
@Controller
public class ImageController {

    @RequestMapping(value = "/getImage/{imageId}")
    @ResponseBody
    public byte[] getImage(@PathVariable long imageId, HttpServletRequest request)  {
        String rpath = request.getContextPath();
        rpath = rpath + "/" + imageId;
        Path path = Paths.get(rpath);
        byte[] data = null;
        try {
            data = Files.readAllBytes(path);
        } catch (IOException e) {
            System.err.println("An IOException was caught :"+e.getMessage());
        }

        return data;
    }

    @RequestMapping(value = "/saveImage")
    public void saveImage() {

    }
}
