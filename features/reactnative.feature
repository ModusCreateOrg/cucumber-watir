Feature: Movies App
  In order to revolutionize Movie ticketing
  As an iOS developer
  I want to be able to automate testing React native apps

@appium
Scenario: As a user I should be able to view movie listing and search for movies
  Given I type "creed" into the search text field
  And I tap "   Creed 2015 • Critics 93%"
  Then the result should be displayed as "Creed"