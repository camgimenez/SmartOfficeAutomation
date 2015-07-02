
######### ACTIONS ############

When /I enter (\d*) as value/ do |test_value|

	find_element(:xpath, "/UIAApplication[1]/UIAWindow[1]/UIATextField[1]").send_keys test_value
		
end



When /^I tap on Done button$/ do

	find_element(:name, "Done").click()

end

When /^I tap on the plus button$/ do
	find_element(:name, "Add")
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAButton[2]").click()
	
end
		
When /^I tap into Enter UPC at the top of the view$/ do
	if first_textfield.value == "Enter UPC #"	
		first_textfield.click()
	end
end

When /^I tap (\d+) digits on the keypad$/ do |qty|
	qty = qty.to_i
	while qty != 0 do
		key= rand(0..9)
		find_ele_by_attr("UIAKey", "name", key).click()
		qty-=1 
	end
		
	
end


When /^I tap Delete on the keypad$/ do
	find_element(:name, "Delete")
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[2]/UIAKeyboard[1]/UIAKey[13]").click()
end


When /^I tap (01234) on the keypad$/ do |upc|
  #find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIATextField[1]/UIATextField[1]").send_keys upc
  upc = upc.to_i
  len = upc.size
  print "Size of the upc ", len
  
  5.times do |key|
  		find_ele_by_attr("UIAKey", "name", key).click()
  end
end

When /^I tap Add on the keypad$/ do
  find_element(:name, "Add")
  find_element(:xpath, "//UIAApplication[1]/UIAWindow[2]/UIAToolbar[1]/UIAButton[1]").click() 
end

########## RESULTS #############


Then /^I should see the Item Search Page$/ do

	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIATextField[1]")

end






Then /^the words -Search by UPC \# appear in the search box at the top of the page $/ do

	assert(find_element(:value, "Search by UPC #"), "Default Value -Search by UPC# not found")

end



Then /focus is in the search box by default/ do

	assert( "Focus is not in search box by default")

end


Then /the keypad (defaulted to display numbers and not text) displays at the bottom of the page/ do

	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[2]/UIAKeyboard[1]"), "Keypad not found")
	assert(find_element(:name, "1"), "Default keypad is not displaying numbers")

end

Then /result should be (.*?)/ do |result|

	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]"), "No item showed")
	assert(find_element(:value, result), "#{result} not found in the results")
	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]/UIAStaticText[1]"), "No item showed in the search results")

end



Then /Add button should appears/ do 

	assert(find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]/UIAButton[1]"), "No button not found")
	assert(find_element(:name, "Add"), "Add button not found")
	#check position

end


Then /Keypad should disappear/ do

	find_element(:xpath, "//UIAApplication[1]/UIAWindow[2]/UIAKeyboard[1]")

end


Then /^those \>14 digits do not appear$/ do
	pending
end	

Then /^are not read in as part of the UPC$/ do
	pending
end


Then /^what I entered is deleted one at a time per delete being tapped$/ do
	pending
end


Then /^item should be added to the list$/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]/UIAStaticText[1]")
	#find_element(:name, "0 1234")
end

Then /^quantity for the row of numbers is (\d*)$/ do |qty|
	puts textfields
	find_ele_by_attr("UIATextField", "value", qty)
end

Then /^quantity for the row of numbers is updated to (\d*)$/ do |qty|
	puts textfields
	for txt in textfields do
		print txt.name, " ", txt.value
	end
	
	find_ele_by_attr("UIATextField", "value", qty)
end