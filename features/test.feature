Feature: My Awesome feature

@regression @desktop
Scenario: My completed desktop feature
  Given I am on the moduscreate home page
  Then I must see the page title "Modus Create | HTML5 Application Development & Training"
  Given I click the "Services" link
  Then I must see the page title "Services | Modus Create"


@regression @mobile
Scenario: My test which ready to run against mobile platform
    Given I am on the moduscreate home page
    Then I must see the page title "Modus Create | HTML5 Application Development & Training"
    Given I click the "MENU" span
    And I wait for the menu to b displayed
    And I click the "Services" link
    Then I must see the page title "Services | Modus Create"

@wip @tablet
Scenario: My work in progress test
  Given I am on the moduscreate home page
  Then I must see the page title "Modus Create | HTML5 Application Development & Training"
  Given I click the "Blog" link
  Then I must see the page title "Blog | Modus Create"
