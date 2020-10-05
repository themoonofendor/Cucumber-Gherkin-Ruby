Feature: Work with todo app example in http://todomvc.com/examples/angular2/

  Scenario: Create todo item
    Given I am on the todo app example page
    When I enter name for todo item
    Then I confirm new todo item was added to the list

  Scenario: Complete todo item
    Given I am on the todo app example page
    When I complete todo item
    Then I confirm new todo item was completed

  Scenario: Delete todo item
    Given I am on the todo app example page
    When I delete todo item
    Then I confirm new todo item was deleted


