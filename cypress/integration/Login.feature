Feature: Login

  Scenario: Login with empty username and password.
    Given I open the heroku login page
    When I click login button
    Then "Your username is invalid!" should be shown

  Scenario: Login with null username and password.
    Given I open the heroku login page
    When I login as an existing " " user " " password
    When I click login button
    Then "Your username is invalid!" should be shown

  Scenario: Login with invalid username and invalid password.
    Given I open the heroku login page
    When I login as an existing "testuser" user "Test1234" password
    When I click login button
    Then "Your username is invalid!" should be shown

  Scenario: Login with valid username and invalid password.
    Given I open the heroku login page
    When I login as an existing "tomsmith" user "Test1234" password
    When I click login button
    Then "Your password is invalid!" should be shown

  Scenario: Login with invalid username and valid password.
    Given I open the heroku login page
    When I login as an existing "tomsmith!!" user "SuperSecretPassword!" password
    When I click login button
    Then "Your username is invalid!" should be shown

  Scenario: Login with valid username and valid password.
    Given I open the heroku login page
    When I should see the Login Page title
    When I login as an existing "tomsmith" user "SuperSecretPassword!" password
    When I click login button
    Then "You logged into a secure area!" should be shown

  Scenario: I logout from the secure area
    Given I logout from secure area
    Then "You logged out of the secure area!" should be shown



