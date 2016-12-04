Feature: About Us
  In order to obtain more info about the company
  as a web user
  I need to be able to read about the history of the company and other details

  Scenario: Visiting 'About Us' page
    Given I am on "/"
    When I follow "About Us"
    Then I should be on "/about/"
    And I should see "About Us"