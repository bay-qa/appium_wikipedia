Feature: Wikipedia search


  Scenario: As Wikipedia user, I would like to perform simple search
    When I tap on skip button
    Then I land to Home screen
    And I tap on Search button
    Then I land on Search screen
    And I type "test automation"
    Then I see that first search result include "test automation" search criteria
    When I tap on 1st result
    And I verify that article title include "test automation"


  Scenario Outline: As Wikipedia user, I would like to perform simple search
    When I tap on skip button
    Then I land to Home screen
    And I tap on Search button
    Then I land on Search screen
    And I type "<subject>"
    Then I see that first search result include "<search_result>" search criteria
    When I tap on 1st result
    And I verify that article title include "<search_result>"

    Examples: search criteria
    |subject|search_result|
    |test automation | test automation |
    |Selenium Web Driver | selenium |
