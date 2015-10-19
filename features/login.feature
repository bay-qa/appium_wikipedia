@login
Feature: Wikipedia login functionality


  Scenario: Verify invalid password error message
    Given I press on Login button
    Then I land on Login page
    And I type "root" to user name text field
    Then I type "qwaszx" to password text field
    When I press on done button
    Then I should see Invalid password error message
    


