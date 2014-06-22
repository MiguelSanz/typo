Feature: Write Articles
  As a blog administrator
  In order to organize my posts
  I want to be able to add/edit categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully view categories
    Given I am on the admin content page
    When I follow "Categories"
    Then I should be on the Categories page

  Scenario: Successfully add new category
    Given I am on the Categories page
    When I fill in "Name" with "Example"
    And I fill in "Keywords" with "Hello world"
    And I fill in "Description" with "This is an example from cucumber"
    And I press "Save"
    Then I should see "Category was successfully saved"

