package com.becomingone.model.webpage;

import com.becomingone.model.BaseEntity;
import com.becomingone.model.util.Image;

import javax.persistence.*;

/**
 * Created by Davy on 8/13/2015.
 */
@Entity
@Table(name = "web_pages_welcome")
public class WelcomePart extends BaseEntity<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToOne
    private WebPage webPage;

    @Column(name = "title", length = 255, nullable = false)
    private String title;

    @Column(name = "text", length = 65535, columnDefinition = "TEXT")
    private String text;

    @OneToOne
    private Image image;

    //region Getters & Setters
    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public WebPage getWebPage() {
        return webPage;
    }

    public void setWebPage(WebPage webPage) {
        this.webPage = webPage;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    //endregion
}
