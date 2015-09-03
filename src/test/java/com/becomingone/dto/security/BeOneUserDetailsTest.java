package com.becomingone.dto.security;

import com.becomingone.model.main.user.Role;
import com.becomingone.model.main.user.SocialMediaService;
import org.junit.Test;

import static com.becomingone.dto.security.BeOneUserDetailsAssert.assertThat;

/**
 * Created by Davy on 7/19/2015.
 */
public class BeOneUserDetailsTest {

    private static final Long ID = 1L;
    private static final String EMAIL = "john.smith@gmail.com";
    private static final String FIRST_NAME = "John";
    private static final String LAST_NAME = "Smith";
    private static final String PASSWORD = "password";
    private static final String SOCIAL_USER_DUMMY_PASSWORD = "SocialUser";

    @Test
    public void build_UserRegisteredByUsingFormRegistration_ShouldCreateNewObject() {
        BeOneUserDetails user = BeOneUserDetails.getBuilder()
                .firstName(FIRST_NAME)
                .id(ID)
                .lastName(LAST_NAME)
                .password(PASSWORD)
                .role(Role.ROLE_USER)
                .username(EMAIL)
                .build();

        assertThat(user).hasFirstName(FIRST_NAME)
                .hasId(ID)
                .hasLastName(LAST_NAME)
                .hasPassword(PASSWORD)
                .hasUsername(EMAIL)
                .isActive()
                .isRegisteredUser()
                .isRegisteredByUsingFormRegistration();
    }

    @Test
    public void build_UserUsingSocialSignIn_ShouldCreateNewObject() {
        BeOneUserDetails user = BeOneUserDetails.getBuilder()
                .firstName(FIRST_NAME)
                .id(ID)
                .lastName(LAST_NAME)
                .password(null)
                .role(Role.ROLE_USER)
                .socialSignInProvider(SocialMediaService.TWITTER)
                .username(EMAIL)
                .build();

        assertThat(user)
                .hasFirstName(FIRST_NAME)
                .hasId(ID)
                .hasLastName(LAST_NAME)
                .hasPassword(SOCIAL_USER_DUMMY_PASSWORD)
                .hasUsername(EMAIL)
                .isActive()
                .isRegisteredUser()
                .isSignedInByUsingSocialSignInProvider(SocialMediaService.TWITTER);
    }
}
