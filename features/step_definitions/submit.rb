######## Background ###############

Given /^that I have internet connectivity$/ do
	if open("http://www.google.com/")
		puts "Connected"
	else
		raise "You dont have internet connectivity"	
end
end 

Given /^that I do NOT have internet connectivity$/ do
	pending		
end
####### Actions ###################

When /^I tap on Submit button$/ do
	find_element(:name, 'Submit').click()
end

When /^I tap OK button$/ do
	pending
end

######### Results #################


Then /^I should be able to see the Confirmation Page$/ do
	sleep 10
	find_element(:name, 'Return to Dashboard')
	find_element(:name, 'Start New Order' )
end

Then /^I see a popup alert with the title "Oops! Something went wrong."$/ do
	pending
end 

Then /^I should back to the login screen$/ do
	pending
end

Then /^I should see the loading indicator$/ do
	find_ele_by_attr('UIAImage', 'name', 'loading_arrows_left')
end 