package com.becomingone.service.main.util;

import com.becomingone.model.main.user.User;
import com.becomingone.model.main.util.Image;

/**
 * Created by Davy on 8/13/2015.
 */
public interface ImageService {
    Image create(User user, String name, String path, byte[] bytes);
}
