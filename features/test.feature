Feature: My Awesome feature

@regression @desktop
Scenario: My completed desktop feature
  Given I am on the moduscreate home page
  Then I must see the page title "Modus Create | HTML5 Application Development & Training"
  Given I click the "Services" span
  Then I must see the page title "Services | Modus Create"


@regression @mobile
Scenario: My test which ready to run against mobile platform
    Given I am on the moduscreate home page
    Then I must see the page title "Modus Create | HTML5 Application Development & Training"
    Given I click the "icon-reorder" icon
    And I wait for the menu to b displayed

@wip @tablet
Scenario: My work in progress test
  Given I am on the moduscreate home page
  Then I must see the page title "Modus Create | HTML5 Application Development & Training"
  Given I click the "Blog" span
  Then I must see the page title "Blog | Modus Create"
