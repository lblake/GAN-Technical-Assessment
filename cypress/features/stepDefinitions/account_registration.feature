Feature: Registration

As a new moneygaming.com player
I want to be able to register using my full details
So that I can play online casino games

Scenario: 'Date of Birth' field not completed 

    Given the user is on the home screen
    When the user clicks the 'Join NOW!' button
    Then the sign-up form is loaded
    When the user selects a 'title' from the drop down 
    And the user enters their firstname
    And the user enters their surname
    And the user selects the 'I accept the Terms and Conditions and certify that I am over the age of 18.'
    checkbox
    And the user selects the 'Join NOW!' button
    Then the sign-up form should display 'This field is required' message under the date of birth box


Scenario: Under 18 user cannot registar

    Given the user is on the home screen
    When the user clicks the 'Join NOW!' button
    Then the sign-up form is loaded
    When the user selects a 'title' from the drop down 
    And the user enters their firstname
    And the user enters their surname
    And the user enters an under 18 'Date of Birth'
    And the user selects the 'I accept the Terms and Conditions and certify that I am over the age of 18.'
    checkbox
    And the user selects the 'Join NOW!' button
    Then the sign-up form should display 'You need to be over 18 to registar'


Scenario: User cannot registar using a future date

    Given the user is on the home screen
    When the user clicks the 'Join NOW!' button
    Then the sign-up form is loaded
    When the user selects a 'title' from the drop down 
    And the user enters their firstname
    And the user enters their surname
    And the user enters a 'Date of Birth' that is in the future
    And the user selects the 'I accept the Terms and Conditions and certify that I am over the age of 18.'checkbox
    And the user selects the 'Join NOW!' button
    Then the sign-up form should display 'You cannot registar using a date in the future'


Scenario: User does not accept terms and conditions

    Given the user is on the home screen
    When the user clicks the 'Join NOW!' button
    Then the sign-up form is loaded
    When the user selects a 'title' from the drop down 
    And the user enters their firstname
    And the user enters their surname
    And the user enters a 'Date of Birth' 
    And the user selects the 'Join NOW!' button
    Then the sign-up form should display 'You have to accept the 'Terms and Conditions' to registar


Scenario: User does not complete mandatory fields

    Given the user is on the home screen
    When the user clicks the 'Join NOW!' button
    Then the sign-up form is loaded
    And the user DOES NOT enter their firstname
    And the user DOES NOT enter their surname
    And the user DOES NOT enter their date of birth
    And the user selects the 'I accept the Terms and Conditions and certify that I am over the age of 18.'checkbox
    And the user selects the 'Join NOW!' button
    Then the sign-up form should display 'This field is required' message under the:
    'Date of Birth, 'FirstName' and 'Surname' fields

Scenario: User enters an invalid month

    Given the user is on the home screen
    When the user clicks the 'Join NOW!' button
    Then the sign-up form is loaded
    And the user enters their firstname
    And the user enters the surname
    And the user enters an invalid month
    And the user selects the 'I accept the Terms and Conditions and certify that I am over the age of 18.'checkbox
    And the user selects the 'Join NOW!' button
    Then the sign-up form should display 'Please enter a valid month'


Scenario: User enters an invalid year

    Given the user is on the home screen
    When the user clicks the 'Join NOW!' button
    Then the sign-up form is loaded
    And the user enters their firstname
    And the user enters the surname
    And the user enters an invalid month
    And the user selects the 'I accept the Terms and Conditions and certify that I am over the age of 18.'checkbox
    And the user selects the 'Join NOW!' button
    Then the sign-up form should display 'Please enter a valid year'



Scenario: User enters an invalid day

    Given the user is on the home screen
    When the user clicks the 'Join NOW!' button
    Then the sign-up form is loaded
    And the user enters their firstname
    And the user enters the surname
    And the user enters an invalid month
    And the user selects the 'I accept the Terms and Conditions and certify that I am over the age of 18.'checkbox
    And the user selects the 'Join NOW!' button
    Then the sign-up form should display 'Please enter a valid day'