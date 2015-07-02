##### Actions #######


When /^I scroll the Item Search View$/ do
	pending
end


When /^I tap on the qty field for an item cell in the order$/ do
	#find_ele_by_attr('UIATextField','location', '{320, 192.5}').click()
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]/UIATextField[1]").click()
end


When /^I tap Done on the keypad$/ do
	find_element(:name, "Done").click() 
end


When /^I tap (\d+) as qty on the keypad$/ do  |qty|
	find_ele_by_attr('UIAKey', 'name', qty).click()
end


##### Results ######

	

Then /^there is no header and footer$/ do
	puts find_eles_by_attr('UIAStaticText', 'visible', 'false')
	
	for stfield in find_eles_by_attr('UIAStaticText', 'visible', 'false')
		if stfield.name == 'Qty' 
			puts "Yes, header is not present"
		else
			puts "RISE ERROR"	
		end
	end

end


Then /^I should see a static footer with a Submit button$/ do
	find_element(:name, 'Submit')
end


And /^I should see a static footer with a Case Count field$/ do
	find_ele_by_attr('UIAStaticText', 'name', 'Case Count')
end

Then /^I should see a static header with UPC and Qty label$/ do
	find_ele_by_attr('UIAStaticText', 'name', 'Qty')
	find_ele_by_attr('UIAStaticText', 'name', 'UPC')		
end


Then /^I should see the offscreen items$/ do
	pending
end 


Then /^the static header\/footer will remain where they are$/ do
	pending
end



Then /^the keypad appears$/ do
	find_ele_by_attr('UIAKeyboard', 'enabled', 'true')
end 


Then /^the qty field is selected for edit$/ do
	pending
end


Then /^the qty entered is updated to (\d+) for that item$/ do |qty|
	find_ele_by_attr('UIATextField', 'value', qty)
	sleep 3
end

Then /^the item is removed from the order$/ do
	find_element(:name, "Add items to see them here.")

end


Then /^I should see the item remains the same qty as before$/ do
	find_ele_by_attr('UIATextField', 'value', '1')
end

And /^Case Count should be updated to (\d+)$/ do |case_count|
	find_eles_by_attr('UIAStaticField', 'value', case_count)
end

And /^Case Count should be removed$/ do
	pending
end
