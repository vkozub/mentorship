Feature: Log in as a registered user
  As an active user
  I want to log in with valid credentials
  In order to access to my benefits

Background:
  Given there is an open group for TDH brand
  And there is a active user for this group

  #MEMBER SITE
Scenario: As a registered user I want to login and get access to my benefits
  Given I am using member app
  And I sign in with valid credentials
  And I wait for the page to load
  Then I am on TDH core dashboard


