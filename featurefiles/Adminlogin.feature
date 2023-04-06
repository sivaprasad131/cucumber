
@ORANGE
Feature: Admin Login
  I want to use this template to Check Admin Login

  @Adminloginwithvaliddata
  Scenario: Check Admin Login with valid data
    Given i open browser with url "http://orangehrm.qedgetech.com"
    Then i should see login page
    When i enter user name as "Admin"
    And  i enter password as "Qedge123!@#"
    And  i click login
    Then i should see admin module
    When i click logout
    Then i should see login page
    When i close browser
    
    @Adminloginwithinvaliddata
    Scenario Outline:Check Admin Login with invalid data
    Given i open browser with url "http://orangehrm.qedgetech.com"
    Then i should see login page
    When i enter user name as "<username>"
    And  i enter password as "<password>"
    And  i click login
    Then i should see  errmsg
     When i close browser
     
     Examples:
     |username|password|
     |Admin|abc|
     |xyz|Qedge123!@|
     |abc|xyz|
     