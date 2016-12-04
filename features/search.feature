Feature: Search
  In order to find required pharmacy products quickly
  As a web user
  I need to be able to use search to look up products products



  Scenario: Searching for a product, which exists
    Given I am on "/"
    When I fill in "sli_search_1" with "Paracetamol"
    And I press "Search"
    Then I should see "Search Results for Paracetamol"


  Scenario: Searching for a product, which doesn't exist
    Given I am on "/"
    When I fill in "sli_search_1" with "фуфломицин"
    And I press "Search"
    Then I should see "0 Search Results for "

  Scenario: Search product by brand name
    Given I am on "/"
    When I follow "H"
    Then I should see "H Brand's"


  Scenario: View All Brands
    Given I am on "/"
    When I follow "View all"
    Then I should see "All Brands"