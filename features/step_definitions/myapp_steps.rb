Given(/^I am on the moduscreate home page$/) do
  puts "Test running against #{BASE_URL}"
  @browser.goto(BASE_URL)
end

Then(/^I must see the page title "(.*?)"$/) do |title|
  assert_equal(title,@browser.title)
end

###### Links
Given(/^I click the "(.*?)" link$/) do |ele|
  case
  when @browser.link(:id, ele).exists?
       @browser.link(:id, ele).click

  when @browser.link(:text, ele).exists?
       @browser.link(:text, ele).click

  when @browser.link(:class, ele).exists?
       @browser.link(:class, ele).click

  when @browser.link(:href, ele).exists?
       @browser.link(:href, ele).click

  else
    fail("Link => #{ele} NOT FOUND")
  end
end

###### Span
Given(/^I click the "(.*?)" span$/) do |ele|
  case
  when @browser.span(:id, ele).exists?
       @browser.span(:id, ele).click

  when @browser.span(:text, ele).exists?
       @browser.span(:text, ele).click

  when @browser.span(:class, ele).exists?
       @browser.span(:class, ele).click

  else
    fail("Span => #{ele} NOT FOUND")
  end
end

###### Icon
Given(/^I click the "(.*?)" icon$/) do |ele|
  case
  when @browser.i(:id, ele).exists?
       @browser.i(:id, ele).click

  when @browser.i(:text, ele).exists?
       @browser.i(:text, ele).click

  when @browser.i(:class, ele).exists?
       @browser.i(:class, ele).click

  else
    fail("Icon => #{ele} NOT FOUND")
  end
end

Given(/^I wait for the menu to b displayed$/) do
  @browser.ul(:class => "off-canvas-list").wait_until_present
end
