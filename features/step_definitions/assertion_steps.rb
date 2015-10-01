Then(/^I must see the text "(.*?)" displayed$/) do |text|
  assert_equal(true,@browser.text.include?(text))
end

Then(/^I should not see the text "(.*?)" displayed$/) do |text|
  assert_equal(false,@browser.text.include?(text))
end

Then(/^I must see the page title "(.*?)"$/) do |title|
  assert_equal(title,@browser.title)
end