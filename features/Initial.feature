Feature: Log in as a registered user
  As a user
  I want to log in with valid credentials
  In order to access to my account

  Scenario: Log in with valid credentials
    Given I am not logged in user
    When  I click Login in button
    Then  Dashboard page is opened
    Then I visit personal details page
