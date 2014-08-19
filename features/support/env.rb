require 'watir-webdriver'
require "watir-webdriver/extensions/alerts"
require 'nokogiri'
require 'date'
require 'chronic'
require 'selenium-webdriver'
require 'minitest/unit'
require 'watir-webdriver-performance'

if ENV['HEADLESS']
  require 'headless'
  headless = Headless.new
  headless.start
  at_exit do
    headless.destroy
  end
end

# custom attribute can now be used for locating objects. I found the solution here
# http://jkotests.wordpress.com/2012/09/04/locate-element-via-custom-attribute-extending-watir-webdriver/
module Watir
    class ElementLocator
        alias :old_normalize_selector :normalize_selector

        def normalize_selector(how, what)
            case how
                when :'ng-model'
                    [how, what]
                else
                    old_normalize_selector(how, what)
            end
        end
    end
end


World(MiniTest::Assertions)