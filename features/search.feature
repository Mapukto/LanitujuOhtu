Feature: Search

  In order to search references
  As a user
  Page should show right references

  Scenario: Shows references that match search word
    Given I am on the main page
    And there exists references in the database
    And I fill 'Jeesus' in search field
    When I press search button
    Then I should see right references and bibtexts on page