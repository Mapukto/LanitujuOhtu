Feature: Inproceedings Page

  In order to view inproceedings
  As a user
  I should go to the inproceedings page

  Scenario: Opens the index page
    Given I am on main page
    And there exists an inproceeding in the database
    When I press the Inproceedings link
    Then I should get to page that shows all inproseedings and their bibtext

  Scenario: Adds new inproceeding
    Given I am on the new inproceeding page
    And I fill inproceeding form
    When I press 'create inproceeding' button
    Then Should go to list of inproceedings and show the new inproceeding

  Scenario: Destroys inproceeding correctly
    Given I create new inproceeding
    And I am on inproceedings page
    When I press 'destroy' button
    Then The list of inproceedings should not show created inproceeding
