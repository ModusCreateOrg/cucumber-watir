Cucumber-Watir Test Harness
===========================

This is a test harness for automated functional testing of web applications, using the [Cucumber](http://cukes.info/) and [Watir Webdriver](http://watirwebdriver.com/) test frameworks. It can be used to support Behavioral Driven Design (BDD) or just automated functional testing of arbitrary web applications.

By using this collection of frameworks, you can quickly start a suite of functional tests for an application using a basic vocabulary inspired by tests that have been used successfully on many production projects.

The built in steps in `features/step-definitions/common_steps.rb` cover a variety of common use cases that occur in the functional testing of web applications, including common operations such as visiting pages, filling in form fields, finding text in a page, and checking that operations complete successfully.

This approach might not be as pure as some would advocate for BDD, but it strikes a good balance between being implementation specific and being fast to write and execute.

Here is an example of a Cucumber scenario written with the common steps:

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

This test framework is licensed under the [MIT License](http://opensource.org/licenses/MIT), a permissive free software license.

See the file LICENSE.md for full copyright and license information.


Setup on Mac OS X
=================

Tools Used:
-----------

1. Mac with `sudo` Access
2. Xcode with command line tools installed. The command line tools can be installed from Xcode -> Preferences -> Downloads
3. RVM (optional)
4. Ruby 2.1.1
5. Watir-Webdriver
6. webdriver-user-agent
7. cucumber
8. homebrew (optional)
9. chromedriver


Steps To Install:
-----------------

### Mac Instructions

#### Install Xcode and then install command line tools.

The command line tools can be installed in Xcode by going to Xcode-> Preferences -> Downloads

#### Install RVM

		curl -L https://get.rvm.io | bash

Using a Ruby version manager will isolate the changes required for testing from the system Ruby. If you don't use rvm, you might consider [rbenv](https://github.com/sstephenson/rbenv) instead.

#### Install Ruby

		rvm install ruby-2.1.1

To make this the default ruby on your Mac run the below command. However you do not need to make it the default ruby for the test scripts to run. The `.ruby-version` file in the folder has the builin workflow to use Ruby 2.1.1 when you cd into the tests/web folder.

		rvm use ruby-2.1.1 --default

#### Install Homebrew

		ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
		brew doctor

If the above command fails, please follow the steps in the output to fix the errors.

Installing Homebrew is optional. These directions use it to install chromedriver, but you could also use `npm` to install chromedriver or install it manually.  You can download chromedriver from http://chromedriver.storage.googleapis.com/index.html?path=2.4/ if you want to install it manually.

#### Install chromedriver

Install `chromedriver` using Homebrew or npm:

		brew install chromedriver
        # or if you prefer to install chromedriver through npm, do
        # npm install chromedriver -g

Unzip and move the driver to any place in your path such as `/usr/local/bin`.

The advantage of installing chromedriver via brew or npm is that you can update it with a single command. (`brew update && brew upgrade``)

#### Install the bundler gem

		gem install bundler --no-ri --no-rdoc

#### Install necessary gems using bundler

		bundle install

### Getting Started (Windows)

The following instructions show how to bootstrap a Windows ruby environment. However, you can shortcut this process by using the Windows Ruby environment found at:

https://github.com/ModusCreateOrg/ruby4windows

#### Download and Install Ruby
Get Ruby 2.1.1 from http://rubyinstaller.org/downloads/

#### Download and install chromedriver

Get Chromedriver from http://chromedriver.storage.googleapis.com/index.html

Make sure the chromedriver is in your PATH enviroment variable.

#### From here you can follow the same instructions as above.

#### Alternatively you can simply clone the below Git repo and run your tests. The package contains all gems and utilities built-in to run the tests.

`https://github.com/ModusCreateOrg/ruby4windows.git`


Running tests
-------------

You can run the tests directly with the cucumber command, or with a set of preset command line options using the `rake` command.

### Run cucumber directly

To run tests directly using Cucumber, simply issue the command:

		cucumber

The above command runs all the tests inside the feature folder but that is not what you want sometimes. To run single individual tests you have to specify the line numbers as below:.

		cucumber features/main.feature:217

This will run the test scenario at line number 217 in the file `features/main.feature`.

### Run cucumber using `rake`

Rake uses tasks to collect a set of functions and commands. In this project, it is used to run cucumber with command line options suitable for testing out different groups of tagged features or

To see a list of tasks, run:

		rake -T

To run the whole regression suite, run:

		rake all

An HTML report will be saved to the `results` folder with screenshots of any failures.


Tips and Troubleshooting:
--------------------------

### Sencha Command integration

If you are using [Sencha Command](http://www.sencha.com/products/sencha-cmd), note that `sencha` may need ruby < 2.0 to be able to build apps successfully.

If you have made Ruby 2.0 your default then run the below command before you use the sencha build script.

		rvm use 1.9.3

### Bash alias for running tests

You can simply create Alias in your bash profile to run tests. Instead of typing the whole cucumber command create this function in your `.bashrc` or `.profile` file:

		echo 'c() { cucumber features/main.feature:"$@" ;}' >> ~/.bashrc
        . ~/.bashrc

Then you can run the test at line 217 by simply running the command below from the test folder:

		c 217

### Libxml errors

If you run into libxml erorrs fix it as suggested in this post

		https://gist.github.com/vparihar01/5856524

