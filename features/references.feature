Feature: References Page

  In order to view all references
  As a user
  I should go to the root page

  Scenario: Opens the root page
    Given I am on the main page
    When there exists references in the database
    Then Page should show all references
    Then Page should show bibtexts for all references

  Scenario: Showall shows bibtexts of all references
    Given I am on the main page
    When there exists references in the database
    Then Page should show bibtexts for all references