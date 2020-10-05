# Cucumber-Gherkin-Ruby
Work with todo app

Please have install following components that need to to make it work
- Install Ruby and DevKit
- Install Cucumber
- Install IDE RubyMine
- Install watir-webdriver
- Instal RSpec

There are two main files:
-Feature file and Step definition file

Features file contain high level description of the Test Scenario in simple language(Gherkin)
Step definition maps the test case steps in the feature files to code. It executes the steps and checks the outcomes against expected results.

What you won't find in the code: There are no 'Scenario Outline' where the same scenario can be executed for multiple sets of data and is provided by a tabular structure separated by (I I).I used 'Scenario'

To run tests in feature file:
-from the terminal navigate to the code directory and execure following command 'cucumber features/todo.feature'
-from the RubyMine IDE click the 'Run' button

