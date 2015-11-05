Given /^I am on (.+)$/ do |page_name|
    @browser.goto(path_to(page_name))
    puts "URL = #{@browser.url}"
end

# Text Field
Given(/^I fill in the text field "(.*?)" with "(.*?)"$/) do |ele, text|
 case
  when @browser.text_field(:id, ele).exists?
       @browser.text_field(:id, ele).set text

  when @browser.text_field(:placeholder, ele).exists?
       @browser.text_field(:placeholder, ele).set text

  when @browser.text_field(:class, ele).exists?
       @browser.text_field(:class, ele).set text

  when @browser.text_field(:name, ele).exists?
       @browser.text_field(:name, ele).set text

  else
    fail("Text Field => #{ele} NOT FOUND")
  end
end

# Button
Given(/^I click the "(.*?)" button$/) do |ele|
  case
  when @browser.button(:id, ele).exists?
       @browser.button(:id, ele).click

  when @browser.button(:text, ele).exists?
       @browser.button(:text, ele).click

  when @browser.button(:class, ele).exists?
       @browser.button(:class, ele).click

  when @browser.button(:name, ele).exists?
       @browser.button(:name, ele).click

  when @browser.button(:value, ele).exists?
       @browser.button(:value, ele).click

  else
    fail("Button => #{ele} NOT FOUND")
  end
end

#Link
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

#Radio Button
Given(/^I click the "(.*?)" radio button/) do |ele|
  case
  when @browser.radio(:id, ele).exists?
       @browser.radio(:id, ele).click

  when @browser.radio(:name, ele).exists?
       @browser.radio(:name, ele).click

  when @browser.radio(:class, ele).exists?
       @browser.radio(:class, ele).click

  else
    fail("Radio Button => #{ele} NOT FOUND")
  end
end

#Checkbox
Given(/^I click the "(.*?)" checkbox/) do |ele|
  case
  when @browser.checkbox(:id, ele).exists?
       @browser.checkbox(:id, ele).click

  when @browser.checkbox(:name, ele).exists?
       @browser.checkbox(:name, ele).click

  when @browser.checkbox(:class, ele).exists?
       @browser.checkbox(:class, ele).click

  else
    fail("checkbox => #{ele} NOT FOUND")
  end
end

#Span
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

#Div
Given(/^I click the "(.*?)" div/) do |ele|
  case
  when @browser.div(:id, ele).exists?
       @browser.div(:id, ele).click

  when @browser.div(:text, ele).exists?
       @browser.div(:text, ele).click

  when @browser.div(:class, ele).exists?
       @browser.div(:class, ele).click

  else
    fail("Div => #{ele} NOT FOUND")
  end
end

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