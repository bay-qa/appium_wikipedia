@settings
Feature: Wikipedia settings functionality

  Scenario: User able to open settings screen
    Given I tap on skip button
    Then I land on Home screen
    When I press on Settings button
    Then I land on Settings screen

