package com.becomingone.controller.user;

import com.becomingone.dto.user.RegistrationForm;
import com.becomingone.model.user.SocialMediaService;
import com.becomingone.model.user.User;
import com.becomingone.service.user.UserService;
import com.becomingone.util.security.SecurityUtil;
import com.becomingone.validation.user.DuplicateEmailException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionKey;
import org.springframework.social.connect.UserProfile;
import org.springframework.social.connect.web.ProviderSignInUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.WebRequest;

import javax.inject.Inject;
import javax.validation.Valid;

/**
 * Created by Davy on 7/18/2015.
 */
@Controller
public class RegistrationController {

    protected static final String ERROR_CODE_EMAIL_EXIST = "NotExist.user.email";
    protected static final String MODEL_NAME_REGISTRATION_DTO = "user";
    protected static final String VIEW_NAME_REGISTRATION_PAGE = "user/registrationForm";

    private final UserService service;
    private final ProviderSignInUtils providerSignInUtils;

    @Inject
    public RegistrationController(UserService service) {
        this.service = service;
        this.providerSignInUtils = new ProviderSignInUtils();
    }

    /**
     * Renders the registration page.
     */
    @RequestMapping(value = "/user/register", method = RequestMethod.GET)
    public String showRegistrationForm(WebRequest request, Model model) {

        RegistrationForm registration;

        Connection<?> connection = providerSignInUtils.getConnectionFromSession(request);

        if (connection != null) {
            registration = RegistrationForm.fromProviderUser(connection);
        }
        else {
            registration = new RegistrationForm();
        }

        model.addAttribute(MODEL_NAME_REGISTRATION_DTO, registration);

        return VIEW_NAME_REGISTRATION_PAGE;
    }

    /**
     * Processes the form submissions of the registration form.
     */
    @RequestMapping(value ="/user/register", method = RequestMethod.POST)
    public String registerUserAccount(@Valid @ModelAttribute("user") RegistrationForm userAccountData,
                                      BindingResult result,
                                      WebRequest request) throws DuplicateEmailException {
        if (result.hasErrors()) {
            return VIEW_NAME_REGISTRATION_PAGE;
        }

        User registered = createUserAccount(userAccountData, result);

        //If email address was already found from the database, render the form view.
        if (registered == null) {
            return VIEW_NAME_REGISTRATION_PAGE;
        }

        //Logs the user in. Remove and handle Account Validation first.
        SecurityUtil.logInUser(registered);
        //If the user is signing in by using a social provider, this method call stores
        //the connection to the UserConnection table. Otherwise, this method does not
        //do anything.
        providerSignInUtils.doPostSignUp(registered.getEmail(), request);

        return "redirect:/";
    }

    /**
     * Creates a new user account by calling the service method. If the email address is found
     * from the database, this method adds a field error to the email field of the form object.
     */
    private User createUserAccount(RegistrationForm userAccountData, BindingResult result) {
        User registered = null;

        try {
            registered = service.registerNewUserAccount(userAccountData);
        }
        catch (DuplicateEmailException ex) {
            addFieldError(
                    MODEL_NAME_REGISTRATION_DTO,
                    RegistrationForm.FIELD_NAME_EMAIL,
                    userAccountData.getEmail(),
                    ERROR_CODE_EMAIL_EXIST,
                    result);
        }

        return registered;
    }

    private void addFieldError(String objectName, String fieldName, String fieldValue,  String errorCode, BindingResult result) {
        FieldError error = new FieldError(
                objectName,
                fieldName,
                fieldValue,
                false,
                new String[]{errorCode},
                new Object[]{},
                errorCode
        );

        result.addError(error);
    }
}
