package com.becomingone.service.main.security;

import com.becomingone.dto.security.BeOneUserDetails;
import com.becomingone.model.main.user.Role;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import static com.googlecode.catchexception.CatchException.catchException;
import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.*;

/**
 * Created by Davy on 7/19/2015.
 */
@RunWith(MockitoJUnitRunner.class)
public class SimpleSocialUserDetailsServiceTest {

    private static final String USER_ID = "john.smith@gmail.com";
    private static final String FIRST_NAME = "John";
    private static final String LAST_NAME = "Smith";
    private static final String PASSWORD = "password";

    private SimpleSocialUserDetailsService service;

    @Mock
    private UserDetailsService userDetailsServicemock;

    @Before
    public void setUp() {
        service = new SimpleSocialUserDetailsService(userDetailsServicemock);
    }

    /*@Test
    public void loadByUserId_UserDetailsNotFound_ShouldThrowException() {
        when(userDetailsServicemock.loadUserByUsername(USER_ID)).thenThrow(new UsernameNotFoundException(""));

        catchException(service).loadUserByUserId(USER_ID);

        assertThat(caughtException())
                .isExactlyInstanceOf(UsernameNotFoundException.class)
                .hasNoCause();

        verify(userDetailsServicemock, times(1)).loadUserByUsername(USER_ID);
        verifyNoMoreInteractions(userDetailsServicemock);
    }*/

    @Test
    public void loadByUserId_UserDetailsFound_ShouldReturnTheFoundUserDetails() {
        BeOneUserDetails found = BeOneUserDetails.getBuilder()
                .firstName(FIRST_NAME)
                .lastName(LAST_NAME)
                .password(PASSWORD)
                .username(USER_ID)
                .role(Role.ROLE_USER)
                .build();
        when(userDetailsServicemock.loadUserByUsername(USER_ID)).thenReturn(found);

        UserDetails actual = service.loadUserByUserId(USER_ID);

        assertThat(actual).isEqualTo(found);

        verify(userDetailsServicemock, times(1)).loadUserByUsername(USER_ID);
        verifyNoMoreInteractions(userDetailsServicemock);
    }
}
