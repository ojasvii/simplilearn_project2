Feature: Login Feature Scenario

  Background: 
    Given I have launched the application
 
  @sanity
  Scenario: This scenario is to define the login happy path
     When I enter the correct username and passowrd
      And I click on the Login Button
     Then I should land on the home page
  @sanity
  Scenario: This sceanrio is to define the failure path
     When I enter the incorrect username and passowrd
      And I click on the Login Button
     Then I should get the error message "Epic sadface: Username and password do not match any user in this service"
  @sanity
  Scenario: This sceanrio is to define the failure path
     When I enter the username as "standard_user" and Password as "Abc@12344"
      And I click on the Login Button
     Then I should get the error message "Epic sadface: Username and password do not match any user in this service"
  
  Scenario Outline: This sceanrio is to define the failure path
     When I enter the username as "<UserName>" and Password as "<Password>"
      And I click on the Login Button
     Then I should get the error message "Epic sadface: Username and password do not match any user in this service"
  
    Examples: 
      | UserName    | Password | 
      | standard_user | Abc@1234 | 
      | problem_user | Ert@1234 |