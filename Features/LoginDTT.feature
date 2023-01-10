Feature: Login Data Driven
@regression
  #Scenario: Successful Login with Valid Credentials
  # scenerio is used to single set of data,
  # Scenario Outline keyword can be used to run the same Scenario multiple times, with different combinations of value
  Scenario Outline: Successful Login with Valid Credentials
    Given User Launch browser
    And opens URL "http://localhost/opencart/upload/"
    When User navigate to MyAccount menu
    And click on Login
    And User enters Email as "<email>" and Password as "<password>"
    And Click on Login button
    Then User navigates to MyAccount Page

    Examples: 
      | email                  | password |
      | vasu_testing@gmail.com | test123  |
      | abc123@gmail.com       | test123  |
