Given /^I am on (.+)$/ do |page_name|
    @browser.goto(path_to(page_name))
    puts "URL = #{@browser.url}"
end

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