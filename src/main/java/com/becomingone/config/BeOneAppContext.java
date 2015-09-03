package com.becomingone.config;

import org.springframework.context.annotation.*;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.orm.hibernate3.HibernateExceptionTranslator;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;

/**
 * Created by Davy on 7/18/2015.
 */
@Configuration
@ComponentScan(basePackages = {"com.becomingone.service"/*, "com.becomingone.config"*/})
@Import({WebAppContext.class, PersistenceContext.class, SecurityContext.class, SocialContext.class})
@PropertySource("classpath:application.properties")
public class BeOneAppContext {

    @Bean
    public PropertySourcesPlaceholderConfigurer propertyPlaceHolderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }
}
