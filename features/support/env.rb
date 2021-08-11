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
# Dotenv.require_keys('USERNAME1', 'PASSWORD1')
USERNAME1 = ENV['USERNAME1']
PASSWORD1 = ENV['PASSWORD1']

def options
  args = %w[window-size=1800,1000]
  args_options = ENV['HEADLESS'] == 'true' ? args << 'headless':args
  Selenium::WebDriver::Chrome::Options.new(args: args_options)
end

Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, { browser: :chrome, options: options })
end
