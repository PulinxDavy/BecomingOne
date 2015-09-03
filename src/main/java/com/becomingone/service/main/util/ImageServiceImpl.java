package com.becomingone.service.main.util;

import com.becomingone.model.main.user.User;
import com.becomingone.model.main.util.Image;
import com.becomingone.repository.main.util.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Davy on 8/13/2015.
 */
@Service
public class ImageServiceImpl implements ImageService {

    private ImageRepository repository;

    @Autowired
    public ImageServiceImpl(ImageRepository repository) {
        this.repository = repository;
    }

    @Transactional
    @Override
    public Image create(User user, String name, String path, byte[] bytes) {
        Image image = new Image();

        image.setName(name);
        image.setUser(user);
        image.setPath(path);
        image.setBytes(bytes);

        try {
            return repository.save(image);
        } catch (Exception e) {
            System.out.print(e.getStackTrace());
            return image;
        }
    }
}
