Given(/^I type "([^"]*)" into the search text field$/) do |arg1|
  find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATextField[1]").send_keys arg1
  find_element(:name, "Return").click
end

Given(/^I tap "([^"]*)"$/) do |arg1|
  find_element(:name,arg1).click
end

Then(/^the result should be displayed as "(.*?)"$/) do |expected|
  assert_includes(first_text.value,expected)
end