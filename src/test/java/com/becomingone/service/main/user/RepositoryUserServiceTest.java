package com.becomingone.service.main.user;

import com.becomingone.dto.user.RegistrationForm;
import com.becomingone.dto.user.RegistrationFormBuilder;
import com.becomingone.model.main.user.SocialMediaService;
import com.becomingone.model.main.user.User;
import com.becomingone.repository.main.user.UserRepository;
import com.becomingone.validation.user.DuplicateEmailException;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.invocation.InvocationOnMock;
import org.mockito.runners.MockitoJUnitRunner;
import org.mockito.stubbing.Answer;
import org.springframework.security.crypto.password.PasswordEncoder;

import static com.becomingone.model.main.user.UserAssert.assertThat;
import static com.googlecode.catchexception.CatchException.catchException;
import static org.mockito.Mockito.isA;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.verifyNoMoreInteractions;
import static org.mockito.Mockito.verifyZeroInteractions;
import static org.mockito.Mockito.when;

/**
 * Created by Davy on 7/19/2015.
 */
@RunWith(MockitoJUnitRunner.class)
public class RepositoryUserServiceTest {

    private static final String EMAIL = "john.smith@gmail.com";
    private static final String ENCODED_PASSWORD = "encodedPassword";
    private static final String FIRST_NAME = "John";
    private static final String LAST_NAME = "Smith";
    private static final String PASSWORD = "password";
    private static final SocialMediaService SIGN_IN_PROVIDER = SocialMediaService.TWITTER;

    private UserServiceImpl service;

    @Mock
    private PasswordEncoder passwordEncoderMock;

    @Mock
    private UserRepository repositoryMock;

    @Before
    public void setUp() {
        service = new UserServiceImpl(passwordEncoderMock, repositoryMock);
    }

    @Test
    public void registerNewUserAccount_ViaSocialSignIn_ShouldCreateNewUserAccountAndSetSocialProvider() throws DuplicateEmailException {
        RegistrationForm registration = new RegistrationFormBuilder()
                .email(EMAIL)
                .firstName(FIRST_NAME)
                .lastName(LAST_NAME)
                .isSocialSignInViaSignInProvider(SIGN_IN_PROVIDER)
                .build();

        when(repositoryMock.findByEmail(EMAIL)).thenReturn(null);
        when(repositoryMock.save(isA(User.class))).thenAnswer(new Answer<User>() {
            @Override
            public User answer(InvocationOnMock invocation) throws Throwable {
                Object[] arguments = invocation.getArguments();
                return (User) arguments[0];
            }
        });

        User registered = service.registerNewUserAccount(registration);

        assertThat(registered)
                .hasEmail(EMAIL)
                .hasFirstName(FIRST_NAME)
                .hasLastName(LAST_NAME)
                .isRegisteredUser()
                .isRegisteredByUsingSignInProvider(SIGN_IN_PROVIDER);

        verify(repositoryMock, times(1)).findByEmail(EMAIL);
        verify(repositoryMock, times(1)).save(registered);
        verifyNoMoreInteractions(repositoryMock);
        verifyZeroInteractions(passwordEncoderMock);
    }

    /*@Test
    public void registerNewUserAccount_ViaSocialSignInAndDuplicateEmailIsFound_ShouldThrowException() throws DuplicateEmailException {
        RegistrationForm registration = new RegistrationFormBuilder()
                .email(EMAIL)
                .firstName(FIRST_NAME)
                .lastName(LAST_NAME)
                .isSocialSignInViaSignInProvider(SIGN_IN_PROVIDER)
                .build();
        when(repositoryMock.findByEmail(EMAIL)).thenReturn(new User());

        catchException(service).registerNewUserAccount(registration);

        Assertions.assertThat(caughtException())
                .isExactlyInstanceOf(DuplicateEmailException.class)
                .hasMessage("The email address: " + EMAIL + " is already in use.")
                .hasNoCause();

        verify(repositoryMock, times(1)).findByEmail(EMAIL);
        verifyNoMoreInteractions(repositoryMock);
        verifyZeroInteractions(passwordEncoderMock);
    }*/

    @Test
    public void registerNewUserAccount_ViaNormalSignIn_ShouldCreateNewUserAccountWithoutSocialProvider() throws DuplicateEmailException {
        RegistrationForm registration = new RegistrationFormBuilder()
                .email(EMAIL)
                .firstName(FIRST_NAME)
                .lastName(LAST_NAME)
                .password(PASSWORD)
                .passwordVerification(PASSWORD)
                .build();

        when(repositoryMock.findByEmail(EMAIL)).thenReturn(null);
        when(passwordEncoderMock.encode(PASSWORD)).thenReturn(ENCODED_PASSWORD);

        when(repositoryMock.save(isA(User.class))).thenAnswer(new Answer<User>() {
            @Override
            public User answer(InvocationOnMock invocation) throws Throwable {
                Object[] arguments = invocation.getArguments();
                return (User) arguments[0];
            }
        });

        User registered = service.registerNewUserAccount(registration);

        assertThat(registered)
                .hasEmail(EMAIL)
                .hasFirstName(FIRST_NAME)
                .hasLastName(LAST_NAME)
                .hasPassword(ENCODED_PASSWORD)
                .isRegisteredUser()
                .isRegisteredByUsingNormalRegistration();

        verify(repositoryMock, times(1)).findByEmail(EMAIL);

        verify(passwordEncoderMock, times(1)).encode(PASSWORD);
        verifyNoMoreInteractions(passwordEncoderMock);

        verify(repositoryMock, times(1)).save(registered);
        verifyNoMoreInteractions(repositoryMock);
    }

    /*@Test
    public void registerNewUserAccount_ViaNormalSignInAndDuplicateEmailIsFound_ShouldThrowException() throws DuplicateEmailException {
        RegistrationForm registration = new RegistrationFormBuilder()
                .email(EMAIL)
                .firstName(FIRST_NAME)
                .lastName(LAST_NAME)
                .password(PASSWORD)
                .passwordVerification(PASSWORD)
                .build();

        when(repositoryMock.findByEmail(EMAIL)).thenReturn(new User());

        catchException(service).registerNewUserAccount(registration);

        Assertions.assertThat(caughtException())
                .isExactlyInstanceOf(DuplicateEmailException.class)
                .hasMessage("The email address: " + EMAIL + " is already in use.")
                .hasNoCause();

        verify(repositoryMock, times(1)).findByEmail(EMAIL);
        verifyNoMoreInteractions(repositoryMock);
        verifyZeroInteractions(passwordEncoderMock);
    }*/
}
