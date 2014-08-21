Feature: Main tests

@smoke @regression @desktop
Scenario: Visit the home page
  Given I am on the moduscreate home page
  Then I must see the page title "Modus Create | HTML5 Application Development & Training"
  Given I click the "Services" span
  Then I must see the page title "Services | Modus Create"

@regression @mobile
Scenario: Visit the home page on a mobile device
    Given I am on the moduscreate home page
    Then I must see the page title "Modus Create | HTML5 Application Development & Training"
    Given I click the "icon-reorder" icon
    And I wait for the menu to b displayed

@wip @tablet
Scenario: Visit the home page on a tablet
  Given I am on the moduscreate home page
  Then I must see the page title "Modus Create | HTML5 Application Development & Training"
  Given I click the "Blog" span
  Then I must see the page title "Blog | Modus Create"
