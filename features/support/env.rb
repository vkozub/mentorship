require 'capybara/cucumber'
require 'dotenv'
require 'erb'
require 'ffaker'
require 'json'
require 'pry'
require 'require_all'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'site_prism'
require 'yaml'

require_all 'page_objects/sections'
require_all 'page_objects/pages'

Dotenv.load
# Dotenv.require_keys('USERNAME', 'PASSWORD')
USERNAME = ENV['USERNAME']
PASSWORD = ENV['PASSWORD']

def options
  Selenium::WebDriver::Chrome::Options.new(args: %w[window-size=1800,1000])
end

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, { browser: :chrome, options: options })
end
