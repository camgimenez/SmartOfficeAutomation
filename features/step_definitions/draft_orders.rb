##### Actions #######

When /^I swipe right to left on the row$/ do
	swipe(:start_x => 350, :start_y => 180, :height =>220, :width => 165, :touchCount => 1, :duration => 500)
	#appium.swipe :start_x => 292, :start_y => 180, :end_x => 212, :end_y => 177, :touchCount => 1, :duration => 500
	#execute_script 'mobile: swipe', :start_x => 292, :start_y => 180, :end_x => 212, :end_y => 177, duration: 0.5
	
end	

When /^I tap Delete$/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]/UIAButton[1]").click()
end

When /^I swipe left to right$/ do
	swipe(:start_x => 220, :start_y => 180, :height =>350, :width => 165, :touchCount => 1, :duration => 500)
end

When /^I tap on Return to Dashboard button$/ do
	find_element(:name, 'Return to Dashboard').click()
end				

When /^I tap on the draft order$/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]").click()
end
		
Then /^I should see (\d+) items added to the order$/  do |count|
  	els = find_eles_by_attr('UIATableCell', 'enabled', 'true')
  	if count.to_i === els.size.to_i
  		puts "Item Added:", el.name
  	else
  		raise "Error: Item is not added to the list"	
  	end	
end		
		
###### Results ###########		


Then /^a Delete option appears on the right$/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]/UIAButton[1]")
	find_element(:name, "Delete")
end 

#Given that this is a feature of sprint 3
Then /^order should be removed of the Draft view$/ do
	pending
end
	
Then /^the date section header is also removed$/ do
	pending
end

Then /^the delete option goes away$/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]")
end

Then /^the draft order remains on the draft order dashboard$/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]")
end

Then /^I should see the order in the list$/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]")
end

Then /^order should be out of the Draft View$/ do
	find_ele_by_attr('UIAStaticText', 'name', 'You do not have any draft orders.')
end