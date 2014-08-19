Given /^I am on (.+)$/ do |page_name|
    @browser.goto(path_to(page_name))
    puts "URL = #{@browser.url}"  #This step links up with the "path_to" method found in support/paths.rb
end

Then(/^I must see the page title "(.*?)"$/) do |title|
  assert_equal(@browser.title, title)
end

Given(/^I fill in the text field "(.*?)" with "(.*?)"$/) do |text_field_name, text|
 @browser.text_field(:name => text_field_name).set text
end

Given(/^I fill in the date field "(.*?)" with "(.*?)"$/) do |date_field_name, text|
  @browser.text_field(:type => 'date', :name => date_field_name).set text
end

Given(/^I click the "(.*?)" button$/) do |button_text|
  @browser.button(:text => button_text).click
end

Given(/^I click the "(.*?)" span$/) do |span_text|
  @browser.span(:text => span_text).click
end

Given(/^I wait for the "(.*?)" text to be displayed$/) do |text|
  Watir::Wait.until { @browser.text.include? text }
end

Then(/^I must see the text "(.*?)" displayed$/) do |text|
  assert_equal(true,@browser.text.include?(text))
end

Given(/^I click the "(.*?)" link$/) do |link_text|
  @browser.link(:text => link_text).click
end

Given(/^I wait for the "(.*?)" message\-box to be displayed$/) do |arg1|
  @browser.div(:class => "popover-content").wait_until_present
end

Then(/^I should not see the text "(.*?)" displayed$/) do |text|
  assert_equal(false,@browser.text.include?(text))
end

Given(/^I send the "(.*?)" keys$/) do |keys|
  if keys == "tab"
    @browser.send_keys :tab
  else
    @browser.send_keys(keys)
  end
end

