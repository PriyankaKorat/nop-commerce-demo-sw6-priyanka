@author_Priyanka @regression
Feature: Register Feature
  In Order to perform successful register
  As a User
  I have to enter correct mandatory detail

  @author_Priyanka @smock @sanity
  Scenario: User should navigate to register page successfully
    Given I am on homepage
    When I click on register link
    Then I should see the the text "Register"

  @author_Priyanka @smock
  Scenario: Verify that mandatory field show validation
    Given I am on homepage
    When I click on register link
    And I click on register button
    Then I should see the first name text error "First name is required."
    And I should see the last name text error "Last name is required."
    And I should see the email required text error "Email is required."
    And I should see the password required text error "Password is required."

  @author_Priyanka
  Scenario: Verify that user should create account successfully
    Given I am on homepage
    When I click on register link
    And I click on female radio button
    And I enter first name "Priyanka"
    And I enter last name "Korat"
    And I enter day "15"
    And I enter month "July"
    And I enter year "1994"
    And i enter email in email field
    And I enter password in password field "Test@1234"
    And I enter confirm password in confirm password field "Test@1234"
    And I click on register button
    Then User should see the success message "Your registration completed"


