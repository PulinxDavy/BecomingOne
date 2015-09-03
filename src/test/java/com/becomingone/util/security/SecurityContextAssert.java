package com.becomingone.util.security;

import com.becomingone.dto.security.BeOneUserDetails;
import com.becomingone.dto.security.BeOneUserDetailsAssert;
import com.becomingone.model.main.user.SocialMediaService;
import com.becomingone.model.main.user.User;
import org.assertj.core.api.AbstractAssert;
import org.assertj.core.api.Assertions;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;

/**
 * Created by Davy on 7/19/2015.
 */
public class SecurityContextAssert extends AbstractAssert<SecurityContextAssert, SecurityContext> {

    private SecurityContextAssert(SecurityContext actual) {
        super(actual, SecurityContextAssert.class);
    }

    public static SecurityContextAssert assertThat(SecurityContext actual) {
        return new SecurityContextAssert(actual);
    }

    public SecurityContextAssert userIsAnonymous() {
        isNotNull();

        Authentication authentication = actual.getAuthentication();

        Assertions.assertThat(authentication)
                .overridingErrorMessage("Expected authentication to be <null> but was <%s>.",
                        authentication
                )
                .isNull();

        return this;
    }

    public SecurityContextAssert loggedInUserIs(User user) {
        isNotNull();

        BeOneUserDetails loggedIn = (BeOneUserDetails) actual.getAuthentication().getPrincipal();

        Assertions.assertThat(loggedIn)
                .overridingErrorMessage("Expected logged in user to be <%s> but was <null>",
                        user
                )
                .isNotNull();

        BeOneUserDetailsAssert.assertThat(loggedIn)
                .hasFirstName(user.getFirstName())
                .hasId(user.getId())
                .hasLastName(user.getLastName())
                .hasUsername(user.getEmail())
                .isActive()
                .isRegisteredUser();

        return this;
    }

    public SecurityContextAssert loggedInUserHasPassword(String password) {
        isNotNull();

        BeOneUserDetails loggedIn = (BeOneUserDetails) actual.getAuthentication().getPrincipal();

        Assertions.assertThat(loggedIn)
                .overridingErrorMessage("Expected logged in user to be <not null> but was <null>")
                .isNotNull();

        BeOneUserDetailsAssert.assertThat(loggedIn)
                .hasPassword(password);

        return this;
    }

    public SecurityContextAssert loggedInUserIsRegisteredByUsingNormalRegistration() {
        isNotNull();

        BeOneUserDetails loggedIn = (BeOneUserDetails) actual.getAuthentication().getPrincipal();

        Assertions.assertThat(loggedIn)
                .overridingErrorMessage("Expected logged in user to be <not null> but was <null>")
                .isNotNull();

        BeOneUserDetailsAssert.assertThat(loggedIn)
                .isRegisteredByUsingFormRegistration();

        return this;
    }

    public SecurityContextAssert loggedInUserIsSignedInByUsingSocialProvider(SocialMediaService signInProvider) {
        isNotNull();

        BeOneUserDetails loggedIn = (BeOneUserDetails) actual.getAuthentication().getPrincipal();

        Assertions.assertThat(loggedIn)
                .overridingErrorMessage("Expected logged in user to be <not null> but was <null>")
                .isNotNull();

        BeOneUserDetailsAssert.assertThat(loggedIn)
                .hasPassword("SocialUser")
                .isSignedInByUsingSocialSignInProvider(signInProvider);

        return this;
    }
}
