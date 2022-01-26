Feature: Onboarding

  As a user, I can create my account.

  Scenario: User create an account
    Given I go to "https://mtreborn-dev.azurewebsites.net/"
    When I focus on text input
      And I type on email field "testautomation@test.com"
      And I type on password field "Qa12345678"
      And I type on username field "test"
      And I click button "Sign up"
    Then I see text "Welcome! What will be your first step?"

  Scenario: User create an account like Buyer
    Given I go to "https://mtreborn-dev.azurewebsites.net/"
    When I focus on text input
      And I type on email field "testautomation@test.com"
      And I type on password field "Qa12345678"
      And I type on username field "test"
      And I click button "Sign up"
    Then I see text "Welcome! What will be your first step?"
      And I click button "Browse Listings"
      And I am redirected to the URL "https://mtreborn-dev.azurewebsites.net/Listing/Browse/"

  Scenario: User create an account like Seller
    Given I go to "https://mtreborn-dev.azurewebsites.net/"
    When I focus on text input
      And I type on email field "testautomation@test.com"
      And I type on password field "Qa12345678"
      And I type on username field "test"
      And I click button "Sign up"
    Then I see text "Welcome! What will be your first step?"
      And I click button "Create a new Listing"
      And I am redirected to the URL "https://mtreborn-dev.azurewebsites.net/Listing/Create/"
