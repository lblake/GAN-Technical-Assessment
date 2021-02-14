Feature: Password Length

Scenario: User password validation

    Given the user is on the home screen
    When the user clicks the 'Join NOW!' button
    Then the sign-up form is loaded
    When the user types the password <password>
    When the user types the validation password <validationPassword>
    When the user clicks the register button
    Then the text <text> is displayed

Examples:
|password   |password2   |text                                       |
|mysecret1@ |mysecret1@  |Welcome john.doe@example.com               |
|mysecret@1 |something@1 |Validation password is NOT the same        |
|word       |word        |Password must be at least 6 characters long   |
|word@      |word1       |Password must be at least 6 characters long with 1 special character and one number |
|mypasswordyī1|mypasswordyī1 |Welcome john.doe@example.com   |
|@@@@@@     |@@@@@@     |Password must be at least 6 characters long with one number |
|@@@@@@1    |@@@@@@1   |Password must be at least 6 characters long with 1 special character and one number |


