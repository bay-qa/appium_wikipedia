@settings
Feature: Wikipedia settings functionality

  Scenario: User able to open settings screen
    Given I tap on skip button
    Then I land on Home screen
    When I press on Settings button
    Then I land on Settings screen

  Scenario: User able to switch 'Send usage reports' toggle
    Given I tap on skip button
    Then I land on Home screen
    When I press on Settings button
    Then I land on Settings screen
    When I press on Send usage reports toggle
    Then Send usage reports toggle should be turned off
    When I press on Send usage reports toggle
    Then Send usage reports toggle should be turned on