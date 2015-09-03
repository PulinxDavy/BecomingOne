package com.becomingone.service.main.webpage;

import com.becomingone.dto.webpage.WelcomeForm;
import com.becomingone.model.main.util.Image;
import com.becomingone.model.main.webpage.WebPage;
import com.becomingone.model.main.webpage.WelcomePart;
import com.becomingone.repository.main.webpage.WelcomePartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Davy on 8/13/2015.
 */
@Service
public class WelcomePartServiceImpl implements WelcomePartService {

    private WelcomePartRepository repository;

    @Autowired
    public WelcomePartServiceImpl(WelcomePartRepository repository) {
        this.repository = repository;
    }

    @Transactional
    @Override
    public WelcomePart create(WelcomeForm form, WebPage webPage, Image image) {
        WelcomePart welcomePart = null;

        if (webPage != null) {
            welcomePart = new WelcomePart();

            welcomePart.setWebPage(webPage);
            welcomePart.setTitle(form.getTitle());
            welcomePart.setText(form.getText());
            welcomePart.setImage(image);
        }

        try {
            return repository.save(welcomePart);
        } catch (Exception e) {
            System.out.print(e.getStackTrace());
            return welcomePart;
        }
    }
}
