Given /^I am on (.+)$/ do |page_name|
    @browser.goto(path_to(page_name))
    puts "URL = #{@browser.url}"  #This step links up with the "path_to" method found in support/paths.rb
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

Given(/^I wait for the "(.*?)" text to be displayed$/) do |text|
  Watir::Wait.until { @browser.text.include? text }
end

Then(/^I must see the text "(.*?)" displayed$/) do |text|
  assert_equal(true,@browser.text.include?(text))
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

Given(/^I wait for the menu to be displayed$/) do
  @browser.ul(:class => "off-canvas-list").wait_until_present
end
Given(/^I wait for the form name "(.*?)"$/) do |arg1|
    @browser.form(:name => arg1).wait_until_present
end

Given(/^I click the "(.*?)" bs popover$/) do |arg1|
    @browser.button(:text => button_text).click
end

Given(/^I click the "(.*?)" path class$/) do |arg1|
  @browser.div(:class => "uv.bubble-foreground").click
end

Given(/^I click the "(.*?)" h(\d+)$/) do |arg1, arg2|
  @browser.div(:class => 'container').h4(:text => arg1).click
end

Then(/^I must see the "(.*?)" text field has a class attribute of "(.*?)"$/) do |textfield_name, attribute|
  class_attr_values = @browser.input(:name,textfield_name).attribute_value('class')
  assert_includes(class_attr_values,attribute)
end
