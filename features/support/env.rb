require 'cucumber'
require 'appium_lib'
require 'rspec'
require 'pry'

require_relative 'wikipedia'
require_relative 'screen_actions'

APP_PATH = ENV['APP'] ||  File.join(File.dirname(__FILE__), "..", "..", "Wikipedia.app")
DEFAULT_TIMEOUT = 20

def caps
  { caps:       { deviceName: (ENV['DEVICE'] || "iPhone 6"),
                  platformName: 'iOS',
                  platformVersion: (ENV['SDK'] || '8.4'),
                  app: APP_PATH,
                  bundleId: 'org.wikimedia.wikipedia.developer',
                  locationServicesEnabled: true,
                  locationServicesAuthorized: true,
                  newCommandTimeout: '36000'},
    appium_lib: { wait: DEFAULT_TIMEOUT,
                  debug: false } }
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Wikipedia
Appium.promote_appium_methods ScreenActions

World do
  Wikipedia.new
end

