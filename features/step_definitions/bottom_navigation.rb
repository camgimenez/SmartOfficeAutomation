############ BACKGROUND ###############






############# ACTIONS ##############

When /I look at the bottom of the page/ do

	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATabBar[1]"), "Navigation Bar not found")

end

When /I tap onto the Review icon in the footer/ do


	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATabBar[1]/UIAButton[2]").click()

end

############# RESULTS #################


Then /I should see two menu options: Search and Review/ do

	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATabBar[1]/UIAButton[1]"), "Search button not found")
	assert(find_element(:name, "Search"), "Search button not found")
	
	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATabBar[1]/UIAButton[2]"), "Review button not found")
	assert(find_element(:name, "Review"), "Review button not found")

end

Then /I leave the Search page and am navigated to the Review page/ do

	#assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAStaticText[1"))   #Review navigation bar
	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAButton[2]")) #Back button
	assert(find_element(:name, "Item"), "Item element not found")
	assert(find_element(:name, "Qty"), "Qty element not found")
	#assert(find_element(:name, "//UIAApplication[1]/UIAWindow[1]/UIAStaticText[3]"), "Scan or add item legend not found")
	assert(find_element(:name, "Submit"), "Submit button not found")
	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAButton[1]"), "Submit button not found")
	
	
end
