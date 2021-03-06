package com.becomingone.dto.user;

import com.becomingone.model.main.user.SocialMediaService;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionKey;
import org.springframework.social.connect.UserProfile;

/**
 * Created by Davy on 7/18/2015.
 */
public class RegistrationForm {

    public static final String FIELD_NAME_EMAIL = "email";

    private String email;

    private String firstName;

    private String lastName;

    private String password;

    private String passwordVerification;

    private SocialMediaService signInProvider;

    public RegistrationForm() {

    }

    //region Getters & Setters
    public boolean isNormalRegistration() {
        return signInProvider == null;
    }

    public boolean isSocialSignIn() {
        return signInProvider != null;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordVerification() {
        return passwordVerification;
    }

    public void setPasswordVerification(String passwordVerification) {
        this.passwordVerification = passwordVerification;
    }

    public SocialMediaService getSignInProvider() {
        return signInProvider;
    }

    public void setSignInProvider(SocialMediaService signInProvider) {
        this.signInProvider = signInProvider;
    }
    //endregion

    public static RegistrationForm fromProviderUser(Connection connection) {
        UserProfile providerUser = connection.fetchUserProfile();
        RegistrationForm form = new RegistrationForm();
        form.setFirstName(providerUser.getFirstName());
        form.setLastName(providerUser.getLastName());
        form.setEmail(providerUser.getEmail());

        ConnectionKey providerKey = connection.getKey();
        form.setSignInProvider(SocialMediaService.valueOf(providerKey.getProviderId().toUpperCase()));

        return form;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("email", email)
                .append("firstName", firstName)
                .append("lastName", lastName)
                .append("signInProvider", signInProvider)
                .toString();
    }
}
