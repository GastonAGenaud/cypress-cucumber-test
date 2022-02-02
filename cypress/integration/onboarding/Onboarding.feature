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

  Scenario: As a user I create a new Listing
    Given I go to "https://mtreborn-dev.azurewebsites.net/"
    When I focus on text input
      And I type on email field "testautomation@test.com"
      And I type on password field "Qa12345678"
      And I type on username field "test"
      And I click button "Sign up"
      And I click button "Create a new Listing"
      And I am redirected to the URL "https://mtreborn-dev.azurewebsites.net/Listing/Create/"
      And I type on listing name field "Rings"
      And I choose the category "Rings"
      And I type on description field "This is a listing created by the automation testing library"
      And I type on price field "12"
      And I type on quantity field "1"
      And I type on video field "https://www.youtube.com/watch?v=cRLhQRaxGj8"
      And I upload image
      And I type on enter your listing address field "1234 S Lamar Blvd, Austin, TX 78704, USA"
      And I type on shipping price field "10"
      And I click button "Go to details"
      And I select the label "black"
      And I type on message to show on checkout field "Nice buy"
      And I type on refund policy field "thirty days for refund"
      And I click button "Connect"
      And I click button "Publish"
    Then I see text "Rings"
      And I am redirected to the URL "https://mtreborn-dev.azurewebsites.net/dashboard/MyListings"
