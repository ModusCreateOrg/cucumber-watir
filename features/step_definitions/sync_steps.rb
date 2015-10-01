

Given(/^I wait for the "(.*?)" text to be displayed$/) do |text|
  Watir::Wait.until { @browser.text.include? text }
end

Given(/^I wait for the menu to be displayed$/) do
  @browser.ul(:class => "off-canvas-list").wait_until_present
end