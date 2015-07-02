Given /that Ive successfully logged in to the App and am on the dashboard/ do

	find_element(:name, "Log In").click()
	find_element(:name, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAImage[1]")

end


Given /that Im on the dashboard/ do

	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAImage[1]")

end



Given /that Ive created more draft orders than can appear on the screen at one time/ do
	pending
end



#########   Actions   #################


When /I look at the dashboard/  do

	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAImage[1]")
	find_element(:name, "Orders")

end



When /I tap on back button/ do

	find_element(:name, "Back").click()
	
end

##print2##

When /I am on the Orders view/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]")
	find_element(:name, "Orders")
	
end


When /I scroll the page down/ do
	pending
end



Then /I should be able to update the order/ do
	pending
end


When /I tap on the Submitted tab/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIASegmentedControl[1]/UIAButton[2]").click()
end

When /I tap on the Draft tab/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIASegmentedControl[1]/UIAButton[1]").click()
end
		



########  Results   ##################


Then  /all I see is the the word Orders and a plus button/ do


	assert(find_element(:name, "Orders"), "Word Orders is not found")
	assert(find_element(:name, "Add"), "Plus button not found")

end

Then /I m taken from the dashboard to a placeholder Item Search page/ do

	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]"), "Item Search Page Not Found")
	assert(find_element(:name, "Empty list"), "Empty List not found")
	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAImage[1]"), "Navigation bar not found")
	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATextField[1]/UIATextField[1]"), "TextField notfound")
	

end


Then /I m taken to dashboard again/ do

	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAImage[1]")

end


 
Then /I m taken again to Search page/ do

	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]"), "Search Page Not Found")
	assert(find_element(:name,"Back"), "Back Button not found")
	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAImage[1]"), "Navigation bar not found")
	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATextField[1]/UIATextField[1]"), "TextField notfound")

end

## sprint2 ##


Then /^I should see the Loading view$/ do
	find_ele_by_attr('UIAImage', 'name', 'loading_arrows_left')
end



Then /^I should be able to Return to Dashboard$/ do
	find_element(:name, 'Return to Dashboard').click()
end

Then /I see the additional orders that did not appear on the screen when I first opened the Draft Orders screen/ do
	pending
end


Then /^ the section headers (eg Today, Tomorrow) are sticky $/ do
	pending
end




Then /Submitted Order View should have (\d+) submitted order/ do |count|
	eles = find_eles_by_attr('UIATableCell', 'enabled', 'true')
	if eles.size.to_i == count.to_i 
		for el in eles
			puts 'Cell found:', el.name
		end	
	else
		raise 'the amount of submitted orders is not the expected'	
	end	
				
end

Then /I should see them chronologically in the list/ do
	pending
end


And /also I have to be able to scroll down/ do
	pending
end

And /scroll up/ do
	pending
end

Then /I should see two tabs: Draft and Submitted/ do
	find_ele_by_attr('UIAButton', 'name', 'Draft')
	find_ele_by_attr('UIAButton', 'name', 'Submitted')
end


Then /I should see Submitted Orders view/ do
	find_ele_by_attr('UIAStaticText', 'name', 'You do not have any submitted orders.')
end


Then /I should see Draft Orders view/ do
	find_ele_by_attr('UIAStaticText', 'name', 'You do not have any draft orders.')
end
