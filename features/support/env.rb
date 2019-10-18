require "httparty"
require "capybara/cucumber"
require "rspec"
require "json"
require "faker"
require "ffaker"
require 'site_prism'
require 'selenium-webdriver'
require 'page-object'

Capybara.default_driver = :selenium
browser_options = []

Capybara.register_driver :selenium do |app|
    profile = Selenium::WebDriver::Chrome::Profile.new
    options = Selenium::WebDriver::Chrome::Options.new(args: browser_options)
  Capybara::Selenium::Driver.new(app, :browser => :chrome, options: options, :profile => profile)
end