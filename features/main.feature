Feature: Main tests
  In order to make sure that the web page is working
  As a normal user
  I want to check out the home page in a variety of aspect ratios

@smoke @regression @desktop
Scenario: Visit the home page
  Given I am on the desktop home page
  Then I must see the page title "Modus Create Labs"
  When I click the "Cucumber Watir" link
  Then I wait for the "test harness" text to be displayed

@regression @mobile
Scenario: Visit the home page on a mobile device
  Given I am on the desktop home page
  Then I must see the page title "Modus Create Labs"
  When I click the "Cucumber Watir" link
  Then I wait for the "test harness" text to be displayed

@wip @tablet
Scenario: Visit the home page on a tablet
  Given I am on the desktop home page
  Then I must see the page title "Modus Create Labs"
  When I click the "Cucumber Watir" link
  Then I wait for the "test harness" text to be displayed
