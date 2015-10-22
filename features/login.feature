@login
Feature: Wikipedia login functionality


  Scenario: Verify invalid password error message
    Given I press on Login button
    Then I land on Login page
    And I type "root" to user name text field
    Then I type "qwaszx" to password text field
    When I press on done button
    Then I should see Invalid password error message

  Scenario: Verify invalid password error message
    Given I press on Login button
    Then I land on Login page
    And I type "0r1o2o3t4" to user name text field
    Then I type "qwert" to password text field
    When I press on done button
    Then I should see Invalid username error message


    


