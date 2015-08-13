package com.becomingone.service.util;

import com.becomingone.model.user.User;
import com.becomingone.model.util.Image;

/**
 * Created by Davy on 8/13/2015.
 */
public interface ImageService {
    Image create(User user, String name, String path);
}
