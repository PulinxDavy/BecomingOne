package com.becomingone.service.main.webpage;

import com.becomingone.model.main.user.User;
import com.becomingone.model.main.webpage.WebPage;
import com.becomingone.model.main.webpage.WebTemplate;
import com.becomingone.repository.main.webpage.WebPageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Davy on 3/08/2015.
 */
@Service
public class WebPageServiceImpl implements WebPageService {

    private WebPageRepository repository;

    @Autowired
    public WebPageServiceImpl(WebPageRepository repository) {
        this.repository = repository;
    }

    @Transactional
    @Override
    public WebPage create(WebTemplate template, User user) {
        WebPage webPage = new WebPage();

        webPage.setUser(user);
        webPage.setTemplate(template);

        try {
            return repository.save(webPage);
        } catch (Exception e) {
            System.err.print(e.getStackTrace());
            return webPage;
        }
    }
}
