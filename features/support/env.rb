require 'watir-webdriver'
require "watir-webdriver/extensions/alerts"
require 'selenium-webdriver'
require 'minitest/autorun'
require 'watir-webdriver-performance'

if ENV['HEADLESS']
  require 'headless'
  headless = Headless.new
  headless.start
  at_exit do
    headless.destroy
  end
end

World(MiniTest::Assertions)
