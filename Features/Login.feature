Feature: Login with Valid Credentials

# @sanity @regression or
# @sanity or
# @regression
 
 @sanity
 
  #Scenario: Successful Login with Valid Credentials
  # scenerio is used to single set of data,
  # Scenario Outline keyword can be used to run the same Scenario multiple times, with different combinations of value
  Scenario: Successful Login with Valid Credentials
    Given User Launch browser
    And opens URL "http://localhost/opencart/upload/"
    When User navigate to MyAccount menu
    And click on Login
    And User enters Email as "vasu_testing@gmail.com" and Password as "test123"
    And Click on Login button
    Then User navigates to MyAccount Page

    
 #@regression
  #Scenario: Successful Login with Valid Credentials
  # scenerio is used to single set of data,
  # Scenario Outline keyword can be used to run the same Scenario multiple times, with different combinations of value
 # Scenario: Successful Login with Valid Credentials
  #  Given User Launch browser
   # And opens URL "http://localhost/opencart/upload/"
   # When User navigate to MyAccount menu
   # And click on Login
   # And User enters Email as "vasu_testing@gmail.com" and Password as "test123"
   # And Click on Login button
   # Then User navigates to MyAccount Page
 