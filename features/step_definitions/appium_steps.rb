###                      ###
### iOS MOBILE APP STEPS ###
###                      ###

Given(/^I type "([^"]*)" into the search text field$/) do |arg1|
  find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATextField[1]").send_keys arg1
  find_element(:name, "Return").click
end

# Tap on element by its name tag
Given(/^I tap "([^"]*)"$/) do |arg1|
  find_element(:name,arg1).click
end

# Tap on element by simply writing elements text
Given(/^I tap on "([^"]*)"/) do |arg1|
  text(arg1).click
end

# Tap on element by wiriting its Xpath
Given(/^I tap "([^"]*)" button$/) do |arg1|
  find_element(:xpath, arg1).click
  sleep(3)
end

Then(/^the result should be displayed as "(.*?)"$/) do |expected|
  assert_includes(first_text.value,expected)
end

### ASSERTIONS ###
Given /^I must see text "([^"]*)" displayed$/ do |text|
  wait { text_exact text }
end

Given /^I do NOT see text "([^"]*)" displayed$/ do |text|
  wait_true { ignore { text_exact(text) }.nil? }
  true
end


### ALERTS ###
Then(/^I should see the error message and accept it$/) do
  def alert_accept
    end
end


### SCROLL ###
Given(/^I scroll down to YOUR_ELEMENT_NAME/) do
element = find_element :name, "YOUR_ELEMENT_NAME"
execute_script 'mobile: scrollTo', :element => element.ref
end

Given(/^I scroll down to YOUR_ELEMENT_NAME/) do
element = find_element :xpath, "//UIAStaticText[@name='YOUR_ELEMENT_NAME']"
execute_script 'mobile: scrollTo', :element => element.ref
end


### KEYBOARD ###
Given(/^I tap "([^"]*)" key$/) do |arg1|
  find_element(:name, arg1).click
  end
