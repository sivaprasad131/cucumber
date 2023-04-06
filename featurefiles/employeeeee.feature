
@Orangeemployee
Feature: Employee Registration
  I want to use this template  to check new employee registration

 @Employeevalid
 Scenario: Check New Employee Registration with valid data
    Given i open browser with url "http://orangehrm.qedgetech.com"
    Then i should see login page
    When i enter user name as "Admin"
    And  i enter password as "Qedge123!@#"
    And  i click login
    Then i should see admin module
    When i go to add employee page
    And  i eneter firstname as "Venyus1"
    And  i enter lastname as "G1"
    And  i click save
    When i click logout
    Then i should see login page
    When i close browser