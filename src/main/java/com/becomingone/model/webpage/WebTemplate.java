package com.becomingone.model.webpage;

import com.becomingone.model.BaseEntity;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by Davy on 3/08/2015.
 */
@Entity
@Table(name = "user_web_page_templates")
public class WebTemplate extends BaseEntity<Long> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "name_template", length = 100, nullable = false, unique = true)
    private String name;

    @OneToMany(mappedBy = "template")
    private Collection<WebPage> webPages;

    //region Getters & Setters
    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Collection<WebPage> getWebPages() {
        return webPages;
    }

    public void setWebPages(Collection<WebPage> webPages) {
        this.webPages = webPages;
    }
    //endregion
}
