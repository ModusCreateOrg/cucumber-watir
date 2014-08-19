Given(/^I wait for the form name "(.*?)"$/) do |arg1|
    @browser.form(:name => arg1).wait_until_present
end

Given(/^I click the "(.*?)" bs popover$/) do |arg1|
    @browser.button(:text => button_text).click
end

Given(/^I click the "(.*?)" path class$/) do |arg1|
  @browser.div(:class => "uv.bubble-foreground").click
end

Given(/^I click the "(.*?)" topics$/) do |arg1|
  #@browser.div(:class => 'container').h4(:text => arg1).click
  @browser.link("ui-sref" => / kickstart.topic /).click
end

Given(/^I click the "(.*?)" icon$/) do |arg1|
  @browser.div(:class =>"uv-icon uv-bottom-right").click
end

Given(/^I click the "(.*?)" h(\d+)$/) do |arg1, arg2|
  @browser.div(:class => 'container').h4(:text => arg1).click
end

Then(/^I must see the "(.*?)" text field has a class attribute of "(.*?)"$/) do |textfield_name, attribute|
  class_attr_values = @browser.input(:name,textfield_name).attribute_value('class')
  assert_includes(class_attr_values,attribute)
end