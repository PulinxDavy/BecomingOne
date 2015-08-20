package com.becomingone.service.security;

import com.becomingone.dto.security.BeOneUserDetails;
import com.becomingone.model.user.SocialMediaService;
import com.becomingone.model.user.User;
import com.becomingone.model.user.UserBuilder;
import com.becomingone.repository.user.UserRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.security.core.userdetails.UserDetails;

import static com.googlecode.catchexception.CatchException.catchException;
import static com.becomingone.dto.security.BeOneUserDetailsAssert.assertThat;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.verifyNoMoreInteractions;
import static org.mockito.Mockito.when;

/**
 * Created by Davy on 7/19/2015.
 */
@SuppressWarnings("ALL")
@RunWith(MockitoJUnitRunner.class)
public class RepositoryUserDetailsServiceTest {

    private static final String EMAIL = "foo@bar.com";
    private static final String FIRST_NAME = "Foo";
    private static final Long ID = 1L;
    private static final String LAST_NAME = "Bar";
    private static final String PASSWORD = "password";

    private UserDetailsServiceImpl service;

    @Mock
    private UserRepository repositoryMock;

    @Before
    public void setUp() {
        service = new UserDetailsServiceImpl(repositoryMock);
    }

    /*@Test
    public void loadByUsername_UserNotFound_ShouldThrowException() {
        when(repositoryMock.findByEmail(EMAIL)).thenReturn(null);

        catchException(service).loadUserByUsername(EMAIL);
        Assertions.assertThat(caughtException())
                .isExactlyInstanceOf(UsernameNotFoundException.class)
                .hasMessage("No user found with username: " + EMAIL)
                .hasNoCause();

        verify(repositoryMock, times(1)).findByEmail(EMAIL);
        verifyNoMoreInteractions(repositoryMock);
    }*/

    @Test
    public void loadByUsername_UserRegisteredByUsingFormRegistration_ShouldReturnCorrectUserDetails() {
        User found = new UserBuilder()
                .email(EMAIL)
                .firstName(FIRST_NAME)
                .id(ID)
                .lastName(LAST_NAME)
                .password(PASSWORD)
                .build();

        when(repositoryMock.findByEmail(EMAIL)).thenReturn(found);

        UserDetails user = service.loadUserByUsername(EMAIL);
        BeOneUserDetails actual = (BeOneUserDetails) user;

        assertThat(actual)
                .hasFirstName(FIRST_NAME)
                .hasId(ID)
                .hasLastName(LAST_NAME)
                .hasPassword(PASSWORD)
                .hasUsername(EMAIL)
                .isActive()
                .isRegisteredUser()
                .isRegisteredByUsingFormRegistration();

        verify(repositoryMock, times(1)).findByEmail(EMAIL);
        verifyNoMoreInteractions(repositoryMock);
    }

    @Test
    public void loadByUsername_UserSignedInByUsingSocialSignInProvider_ShouldReturnCorrectUserDetails() {
        User found = new UserBuilder()
                .email(EMAIL)
                .firstName(FIRST_NAME)
                .id(ID)
                .lastName(LAST_NAME)
                .signInProvider(SocialMediaService.TWITTER)
                .build();

        when(repositoryMock.findByEmail(EMAIL)).thenReturn(found);

        UserDetails user = service.loadUserByUsername(EMAIL);
        BeOneUserDetails actual = (BeOneUserDetails) user;

        assertThat(actual)
                .hasFirstName(FIRST_NAME)
                .hasId(ID)
                .hasLastName(LAST_NAME)
                .hasUsername(EMAIL)
                .isActive()
                .isRegisteredUser()
                .isSignedInByUsingSocialSignInProvider(SocialMediaService.TWITTER);

        verify(repositoryMock, times(1)).findByEmail(EMAIL);
        verifyNoMoreInteractions(repositoryMock);
    }
}
