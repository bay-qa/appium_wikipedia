@gestures
Feature: various gestures

  Scenario: As Wikipedia user, I can scroll down until Overview section
    When I tap on skip button
    Then I land on Home screen
    And I tap on Search button
    Then I land on Search screen
    And I type "test automation"
    Then I see that 1st search result include "test automation"
    When I tap on 1st result
    And I verify that article title include "test automation"
    Then I scroll down until I "Overview" is displayed
