Given(/^I am on the moduscreate home page$/) do
  puts "Test running against #{BASE_URL}"
  @browser.goto(BASE_URL)
end

Then(/^I must see the page title "(.*?)"$/) do |title|
  assert_equal(title,@browser.title)
end

###### Links
Given(/^I click the "(.*?)" link$/) do |link_attr|
  case
  when @browser.link(:id, link_attr).exists?
       @browser.link(:id, link_attr).click

  when @browser.link(:text, link_attr).exists?
       @browser.link(:text, link_attr).click

  when @browser.link(:class, link_attr).exists?
       @browser.link(:class, link_attr).click

  when @browser.link(:href, link_attr).exists?
       @browser.link(:href, link_attr).click

  else
    fail("Link => #{link_attr} NOT FOUND")
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

Given(/^I wait for the menu to b displayed$/) do
  @browser.ul(:class => "menuNavUl").wait_until_present
end
