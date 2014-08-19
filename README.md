Cucumber-Watir Test Harness
===========================

This is a test harness for automated functional testing of web applications, using the [Cucumber](http://cukes.info/) and [Watir](http://watir.com/) test frameworks. It can be used to support Behavioral Driven Design (BDD) or just automated functional testing of arbitrary web applications.

By using this collection of frameworks, you can quickly start a suite of functional tests for an application using a basic vocabulary inspired by tests that have been used successfully on many production projects.

The built in steps in `features/step-definitions/common_steps.rb` cover a variety of common use cases that occur in the functional testing of web applications, including common operations such as visiting pages, filling in form fields, finding text in a page, and checking that operations complete successfully.

This approach might not be as pure as some would advocate for BDD, but it strikes a good balance between being implementation specific and being fast to write and execute.

Here's an example of a Cucumber scenario written with the common steps:

```
@smoke @regression @desktop
Scenario: User views profile page
      Given I am on the desktop home page
      Then I must see the page title "example.com"
      Given I fill in the text field "login_email" with "foobar@example.com"
      And I fill in the text field "login_password" with "password"
      And I click the "Login" span
      And I wait for the "Dashboard" text to be displayed
      Given I click the "foobar@example.com" link
      And I wait for the "Profile" text to be displayed
      And I send the "tab" keys
      And I send the "06/01/2014" keys
      And I send the "tab" keys
      And I send the "06/06/2014" keys
      And I click the "Save & Continue" span
      And I fill in the text field "short_description" with "Modus Kickstart short description"
      Then I must see the text "Thank You" displayed
```

License
=======

This test framework is licensed under the (MIT License)[http://opensource.org/licenses/MIT], a permissive free software license.

See the file LICENSE for full copyright and license information.


Setup on Mac OS X
=================

Tools Used:
-----------

1. Mac with Sudo Access
2. Xcode with command line tools installed (command line tools can be installed from Xcode -> Preferences -> Downloads)
3. RVM - Optional
4. Ruby 2.0
5. Watir-Webdriver
6. webdriver-user-agent
7. cucumber
8. homebrew - Optional
9. chromedriver


Steps To Install:
-----------------

**Install Xcode and then install commandline tools.**
>*Command line tools can be installed from going to Xcode-> Preferences -> Downloads*

**Install RVM**

		\curl -L https://get.rvm.io | bash

**Install Ruby**

		rvm install ruby-2.0.0-p247

*To make this the default ruby on your Mac run the below command. However It is not necessary to make it the default ruby. The gemfile in the folder has the builin workflow to use Ruby 2.0 when you cd into the tests/web folder.*

		rvm use ruby-2.0.0-p247 --default

**Install Homebrew**

		ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

		brew doctor

>*if the above command fails, please follow the steps in the output to fix the errors.*

**Install chromedriver**

		brew install chromedriver

>*Installing Homebrew is Optional. The only reason I use it is to install chromedriver*
>*You can download chromedriver from http://chromedriver.storage.googleapis.com/index.html?path=2.4/*
>*Unzip and move the driver to anyplace in your path like /usr/local/bin*
>*you can skip the brew install chromedriver below if you download it*
>*Advantage of installing via brew is that you can update it with a single command. (brew update && brew upgrade)*

**Install the bundler gem**

		gem install bundler --no-ri --no-rdoc

**Install necessary gems using bundler**

		cd test
		bundle install

**Running tests**

		cucumber features

>*The above command runs all the tests inside the feature folder but that i snot what you want sometimes. To run single individual tests yo have to specify the line numbers as below*

		cucumber features/main.feature:217

This will run the Test scenario at line number 217

**To see a list of Tasks**

		rake -T

**To run the whole regression Suite**

		rake regression:all

>*The HTML report will be saved to the results folder with screenshots of failures if any.*


Tips and Troubleshooting:
--------------------------

*Sencha Command integration*

*Please note that Sencha command needs ruby < 2.0 to be able to build apps successfully.*

If you have made Ruby 2.0 your default then run the below command before you use the sencha build script.

		rvm use 1.9.3

>*You can simply create Alias in your bash profile to run tests. Instead of typing the whole cucumber command create this function in your bashrc or .profile file*

		vi ~/.bash_profile

		c() { cucumber features/main.feature:"$@" ;}


**Save, Exit and source the file or simply restart your terminal**

**Then you can run the test at line 217 by simply running the command below from the test folder**

		c 217


**If you run into libxml erorrs fix it as suggested in this post**

		https://gist.github.com/vparihar01/5856524


