Feature: Create and delete a repository

  Scenario: I want to create a repository
    Given I am an authenticated user
    When I create a repository called "my-new-repo"
    And I request a list of my repositories
    Then the results should include a repository named "my-new-repo"

  Scenario: I want to delete a repository
    Given I am an authenticated user
    And I request a list of my repositories
    And the results should include a repository named "my-new-repo"
    When I delete a repository called "my-new-repo"
    And I request a list of my repositories
    Then the results should not include a repository named "my-new-repo"
