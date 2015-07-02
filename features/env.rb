# Sets up Appium configuration for all tests

require 'appium_lib'
require 'cucumber/ast'
require 'minitest'
require 'open-uri'
require 'resolv-replace'




class MyOwnWorld

	# Load configuration from support/appium.txt and create a new driver
	caps = Appium.load_appium_txt file: File.expand_path("../support/appium.txt", __FILE__),
	                              verbose: true

	puts caps

	server_url = "http://127.0.0.1:4723/wd/hub"
	Appium::Driver.new(caps)
	
	# World is the scope of all the files involved in cucumber,
	# we're just adding all the Appium methods to it
	Appium.promote_appium_methods MyOwnWorld

    # now we're adding minitest assertions to the world
  	extend Minitest::Assertions
  	attr_accessor :assertions

  	def initialize
    	self.assertions = 0
    	
  	end
  	
  	def logging_steps
  		logging_steps = "STEPS\n"
  	end
  	
  	def pass_field
  	end
  	

end


World do 
	MyOwnWorld.new
end 


## We start and stop Appium server before and after executing tests
Before { system("#{File.expand_path("../../scripts/appium", __FILE__)} start") and $driver.start_driver }
After {  system("#{File.expand_path("../../scripts/appium", __FILE__)} stop") and $driver.driver_quit }


