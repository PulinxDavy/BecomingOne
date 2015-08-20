package com.becomingone.service.util;

import com.becomingone.model.user.User;
import com.becomingone.model.util.Image;
import com.becomingone.repository.util.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

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
