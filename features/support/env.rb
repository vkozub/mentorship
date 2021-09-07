require 'allure-cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'dotenv'
require 'erb'
require 'ffaker'
require 'fileutils'
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

AllureCucumber.configure do |config|
  config.results_directory = "report/allure-results"
  config.clean_results_directory = true
  # config.logging_level = Logger::INFO
  # config.logger = Logger.new($stdout, Logger::DEBUG)
  # config.environment = "staging"

  # these are used for creating links to bugs or test cases where {} is replaced with keys of relevant items
  config.link_tms_pattern = "http://www.jira.com/browse/{}"
  config.link_issue_pattern = "http://www.jira.com/browse/{}"

  # additional metadata
  # environment.properties
  config.environment_properties = {
    custom_attribute: "foo"
  }
  # categories.json
  config.categories = File.new("my_custom_categories.json")
end

FileUtils.mkdir_p('report/cucumber-reports/html') unless File.directory?('report/cucumber-reports/html')
FileUtils.mkdir_p('report/cucumber-reports/rerun') unless File.directory?('report/cucumber-reports/rerun')
FileUtils.mkdir_p('report/cucumber-reports/parallel') unless File.directory?('report/cucumber-reports/parallel')
