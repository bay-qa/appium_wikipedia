require 'cucumber'
require 'appium_lib'
require 'rspec'
require 'pry'

APP_PATH = ENV['APP'] ||  File.join(File.dirname(__FILE__), "..", "..", "Wikipedia.app")
DEFAULT_TIMEOUT = 20


class AppiumWorld
end

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
Appium.promote_appium_methods AppiumWorld


World do
  AppiumWorld.new
end

