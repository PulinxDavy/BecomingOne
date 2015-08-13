package com.becomingone.service.webpage;

import com.becomingone.dto.webpage.WelcomeForm;
import com.becomingone.model.user.User;
import com.becomingone.model.webpage.WebPage;
import com.becomingone.model.webpage.WelcomePart;
import com.becomingone.repository.webpage.WebPageRepository;
import com.becomingone.repository.webpage.WelcomePartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Davy on 8/13/2015.
 */
@Service
public class RepositoryWelcomePartService implements WelcomePartService {

    private WelcomePartRepository repository;

    @Autowired
    public RepositoryWelcomePartService(WelcomePartRepository repository) {
        this.repository = repository;
    }

    @Transactional
    @Override
    public WelcomePart create(WelcomeForm form, WebPage webPage) {
        WelcomePart welcomePart = null;

        if (webPage != null) {
            welcomePart = new WelcomePart();

            welcomePart.setWebPage(webPage);
            welcomePart.setTitle(form.getTitle());
            welcomePart.setText(form.getText());
            //welcomePart.setImage(form.getImage());
        }

        try {
            return repository.save(welcomePart);
        } catch (Exception e) {
            System.out.print(e.getStackTrace());
            return welcomePart;
        }
    }
}
