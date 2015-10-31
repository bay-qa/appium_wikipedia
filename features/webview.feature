@webview
Feature: Privacy policy

  Scenario: User able to open settings screen
    Given I tap on skip button
    Then I land on Home screen
    When I press on Settings button
    Then I land on Settings screen
    And I tap on Privacy policy
    Then I land on Privacy policy web page