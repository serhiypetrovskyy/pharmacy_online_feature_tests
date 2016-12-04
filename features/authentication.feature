Feature: Authentication
  In order to get access to personal account
  As a registered user
  I need to be able to login and logout

  Background:
    Given I am on "/"


  Scenario: Login, using valid credentials
    When I follow "Sign In"
    And I fill in "Email Address" with "kristina.downing23@gmail.com"
    And I fill in "Password" with "kristina23"
    And I press "Login"
    Then I should see "My Dashboard"
    And I should see "Hello,"


  Scenario: Login, using invalid credentials
    When I follow "Sign In"
    And I fill in "Email Address" with "kd@gmail.com"
    And I fill in "Password" with "kristina"
    And I press "Login"
    Then I should see "Invalid login or password"


  Scenario: Login, using valid email address and invalid password
    When I follow "Sign In"
    And I fill in "Email Address" with "kristina.downing23@gmail.com"
    And I fill in "Password" with "kristina"
    And I press "Login"
    Then I should see "Invalid login or password"


  Scenario: Login, using invalid email address and valid password
    When I follow "Sign In"
    And I fill in "Email Address" with "kd@gmail.com"
    And I fill in "Password" with "kristina23"
    And I press "Login"
    Then I should see "Invalid login or password"


  Scenario: Logout
    When I follow "Sign In"
    And I fill in "Email Address" with "kristina.downing23@gmail.com"
    And I fill in "Password" with "kristina23"
    And I press "Login"
    And I should see "My Dashboard"
    And I should see "Hello,"
    And I follow "Logout"
    Then I should see "You are now logged out"
    And I should see "You have logged out and will be redirected to our homepage in 5 seconds."
