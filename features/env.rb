# Sets up Appium configuration for all tests

require 'appium_lib'
require 'cucumber/ast'

# Load configuration from support/appium.txt and create a new driver
caps = Appium.load_appium_txt file: File.expand_path("../support/appium.txt", __FILE__),
                              verbose: true


#sauce_caps + Appium.load_appium_txt file: File.expand_path("../support/sauce_caps_appium.txt", __FILE__), 
#									verbose: true
#sauce_url = ""

puts caps

server_url = "http://127.0.0.1:4723/wd/hub"


# World is the scope of all the files involved in cucumber,
# we're just adding all the Appium methods to it
class AppiumWorld
end

Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

World do
    AppiumWorld.new
end

Before { system("#{File.expand_path("../../scripts/appium", __FILE__)} start") and $driver.start_driver }
After {  system("#{File.expand_path("../../scripts/appium", __FILE__)} stop") and $driver.driver_quit }


