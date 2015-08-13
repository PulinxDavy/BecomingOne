package com.becomingone.service.util;

import com.becomingone.model.user.User;
import com.becomingone.model.util.Image;
import com.becomingone.repository.util.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;

/**
 * Created by Davy on 8/13/2015.
 */
@Service
public class RepositoryImageService implements ImageService {

    private ImageRepository repository;

    @Autowired
    public RepositoryImageService(ImageRepository repository) {
        this.repository = repository;
    }

    @Transactional
    @Override
    public Image create(User user, String name, String path) {
        Image image = new Image();

        image.setName(name);
        image.setUser(user);
        image.setPath(path);

        try {
            return repository.save(image);
        } catch (Exception e) {
            System.out.print(e.getStackTrace());
            return image;
        }
    }
}
