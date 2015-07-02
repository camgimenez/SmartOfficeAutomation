@EndtoEnd
Feature: End To End


@EndtoEndScenario
Scenario: End To End
	
	#Login
	Given Im on the login view 
	When I tap on email field  
	And I enter valid email value
		
	And I tap on password field
	And I enter valid password value
	And I tap Done in the keypad
	
	And I tap on the login button
	Then I should see the Orders view 

	#Adding item
	When I tap on the plus button
	And I tap into Enter UPC at the top of the view
	
	And I tap 01234 on the keypad
	And I tap Add on the keypad 
	Then item should be added to the list
	
	And I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad
	And I tap Add on the keypad 
	Then item should be added to the list
	
	And I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad
	And I tap Add on the keypad 
	Then item should be added to the list
	
	Then the qty entered is updated to 3 for that item
	
	#Manually update
	When I tap on the qty field for an item cell in the order
    Then the keypad appears 
    When I tap 5 as qty on the keypad 
    And I tap Done on the keypad
    Then the qty entered is updated to 5 for that item
    
    #Submit
    When I tap on Submit button
	Then I should be able to see the Confirmation Page
	And I should be able to Return to Dashboard
		
	#Draft Order	
	When I tap on the plus button
	And I tap into Enter UPC at the top of the view
	And I tap 4 digits on the keypad
	And I tap Add on the keypad 
	Then item should be added to the list
	
	When I tap on back button
	Then I should see the order in the list
	
	#Delete
	When I swipe right to left on the row		
	And I swipe left to right
	Then the delete option goes away
	
	When I swipe right to left on the row	
	And I tap Delete
	Then order should be out of the Draft View
	
	And I will try to see a fake element that is not in the view
	
		
		
		