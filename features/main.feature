Feature: Main tests
  In order to make sure that the web page is working
  As a normal user
  I want to check out the home page in a variety of aspect ratios

@smoke @regression @desktop
Scenario: Visit the home page
  Given I am on the desktop home page
  Then I must see the page title "Modus Create - HTML5 Application Development & Training"
  Given I click the "Services" span

@regression @mobile
Scenario: Visit the home page on a mobile device
    Given I am on the desktop home page
    Then I must see the page title "Modus Create - HTML5 Application Development & Training"
    Given I click the "icon-reorder" icon
    And I wait for the menu to be displayed

@wip @tablet
Scenario: Visit the home page on a tablet
  Given I am on the desktop home page
  Then I must see the page title "Modus Create - HTML5 Application Development & Training"
  Given I click the "Blog" span
  Then I must see the page title "Blog | Modus Create"
