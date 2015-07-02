@DraftOrders 
Feature: Draft Orders

	As a user of the Connect Retailer app
	After clicking through the Login screen 
	I want to see a placeholder "Orders" 
	And be able to create draft orders
	
	Background:
	
		Given Im on the login view
		When I tap on email field 
		And I enter valid email value
		
		And I tap on password field
		And I enter valid password value
		And I tap Done in the keypad
		
		And I tap on the login button
		Then I should see the Orders view 
	
	
	@Sprint2 @TC33	
	Scenario: Draft Orders - No order 
	
		And I should see the legend "You do not have any draft orders."
	
	# VER SCROLLING DESPUES	
	#@Sprint2 @TC38 @TC39	
	#Scenario: Draft Orders - Scrolling
			
		
	#	When I scroll the page down
	#	Then I see the additional orders that did not appear on the screen when I first opened the Draft Orders screen
	#	And the section headers (eg Today, Tomorrow) are sticky
	

		
					
	@Sprint2 @US187 @TC2167 @TC2169 
	Scenario: Draft Orders - Delete a Draft Order
	
		When I tap on the plus button
		And I tap into Enter UPC at the top of the view
		And I tap 3 digits on the keypad
		And I tap Add on the keypad 
		
		Then I tap on back button
		And I should see the order in the list
		
		When I swipe right to left on the row
		Then a Delete option appears on the right 
		When I tap Delete
		Then order should be out of the Draft View
		
	
	@Sprint2 @US187 @TC2170
	Scenario: Draft Orders - Delete/Header disappear
	
		When I tap on the plus button
		And I tap into Enter UPC at the top of the view
		And I tap 01234 on the keypad 
		And I tap 3 digits on the keypad
		And I tap Add on the keypad 
		
		Then I tap on back button
		And I should see the order in the list
		
		When I swipe right to left on the row
		Then a Delete option appears on the right 
		When I tap Delete
		Then order should be out of the Draft View
		And the date section header is also removed
	
	
	@Sprint2 @US187 @TC2171
	Scenario: Draft Order - Delete/Helper Text
	
		When I tap on the plus button
		And I tap into Enter UPC at the top of the view
		And I tap 01234 on the keypad 
		And I tap 3 digits on the keypad
		And I tap Add on the keypad 
		
		Then I tap on back button
		And I should see the order in the list
		
		
		When I swipe right to left on the row
		And I tap Delete
		And I should see the legend "You do not have any draft orders."
	
	
	@Sprint2 @US187 @TC2168
	Scenario: Draft Order - Cancel Delete 
	
		When I tap on the plus button
		And I tap into Enter UPC at the top of the view
		And I tap 01234 on the keypad 
		And I tap 3 digits on the keypad
		And I tap Add on the keypad 
		
		Then I tap on back button
		And I should see the order in the list
		
		When I swipe right to left on the row		
		And I swipe left to right
		Then the delete option goes away
 		And the draft order remains on the draft order dashboard
 		
	@Sprint3  @TC2058 @US164 @TC2024 @TC2016
	Scenario: Draft Orders - Resume - Update/Add item to the order
			
		And I tap on the plus button
		When I tap into Enter UPC at the top of the view
		And I tap 5 digits on the keypad 
		And I tap on back button
		Then I should see the order in the list
		
		When I tap on the draft order
		And I tap into Enter UPC at the top of the view
		And I tap 15 digits on the keypad
		And I tap Add on the keypad
		
		Then I should see 2 items added to the order
		
		
	@Sprint3 @US187 @US164 @TC2058 @TC2199
	Scenario: Draft Orders - Resume - Submit a draft order/Draft order removed	
				
		When I tap on the plus button
		And I tap into Enter UPC at the top of the view
		And I tap 15 digits on the keypad
		And I tap Add on the keypad 
		
		Then I tap on back button
		And I should see the order in the list
		
		When I tap on the draft order
		Then I should see a static footer with a Submit button 
		When I tap on Submit button
		And I tap on Return to Dashboard button
		
		Then order should be out of the Draft View  		