package com.becomingone.validation.user;

/**
 * Created by Davy on 7/19/2015.
 */
@PasswordsNotEqual(
        passwordFieldName = "password",
        passwordVerificationFieldName = "passwordVerification"
)
public class PasswordsNotEqualDTO {

    private String password;
    private String passwordVerification;

    public static PasswordsNotEqualDTOBuilder getBuilder() {
        return new PasswordsNotEqualDTOBuilder();
    }

    public static class PasswordsNotEqualDTOBuilder {

        private PasswordsNotEqualDTO dto;

        public PasswordsNotEqualDTOBuilder() {
            dto = new PasswordsNotEqualDTO();
        }

        public PasswordsNotEqualDTOBuilder password(String password) {
            dto.password = password;
            return this;
        }

        public PasswordsNotEqualDTOBuilder passwordVerification(String passwordVerification) {
            dto.passwordVerification = passwordVerification;
            return this;
        }

        public PasswordsNotEqualDTO build() {
            return dto;
        }
    }
}
