Feature: sort movies by title

  Scenario: View movie list after adding 2 movies and sort alphabetically
    Given I am on the RottenPotatoes home page
    And I add a new movie with title "Batman"
    And I add a new movie with title "Avengers"
    When I follow "Title"
    Then I should see "Avengers" before "Batman"