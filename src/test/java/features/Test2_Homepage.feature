Feature: Homepage Feature Scenario

  Background: 
    Given I have launched the application
 
  @sanity
  Scenario: This scenario is to define the login happy path
     When I enter the correct username and passowrd
      And I click on the Login Button
      And I click add to cart on product "Sauce Labs Backpack"
     Then Basket item should be increased
 
  