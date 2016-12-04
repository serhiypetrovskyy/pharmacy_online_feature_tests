Feature: Shopping Cart
  In order to manage my products
  as a web user
  I need to be able to add and remove products in shopping cart

  Background:
    Given I am on "/"

  Scenario: Shopping Cart is empty
    When I follow "View Cart"
    Then I should see "Shopping Cart is Empty"

   Scenario: Adding a product to Shopping Cart
     When I follow "Beauty"
     And I follow "Hair Care"
     And I follow "Benzemul 200ml"
     And I press "Buy"
     And I follow "View Cart"
     Then I should see "Shopping Cart"
     And I should see "Benzemul 200ml"

   Scenario: Deleting a product from Shopping Cart
     When I follow "Beauty"
     And I follow "Hair Care"
     And I follow "Benzemul 200ml"
     And I press "Buy"
     And I follow "View Cart"
     And I should see "Shopping Cart"
     And I should see "Benzemul 200ml"
     When I follow "Remove item"
     Then I should see "Shopping Cart is Empty"
