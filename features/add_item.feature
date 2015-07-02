# This feature is checking the Add Item view
@Item 
Feature: Add item

As an Order app user
I want to be able to see a screen to add item
so I can add items to my order.

Background:

		Given Im on the login view
		When I tap on email field 
		And I enter valid email value
		
		And I tap on password field
		And I enter valid password value
		And I tap Done in the keypad
		
		And I tap on the login button
		Then I should see the Orders view 
		When I tap on the plus button
		#Then I should see the Item Search View
		
		
		

@Sprint2 @US166 @TC2038 @Sprint3 @US172 @TC2187
Scenario: Add Item View - No items
	
	Then I should see the legend "Add items to see them here." 
	And there is no header and footer

	
@Sprint2 @US166 @TC2039 @TC2040 @TC2047	@Sprint3 @US172 @TC2188
Scenario: Add Item View - Scrolling, static header, static footer
	And I tap into Enter UPC at the top of the view

	And I tap 01234 on the keypad 
	And I tap Add on the keypad 
	Then item should be added to the list
	And I should see a static footer with a Submit button 
	And I should see a static footer with a Case Count field
	And I should see a static header with UPC and Qty label


	When I scroll the Item Search View 
	Then I should see the offscreen items 
	And the static header/footer will remain where they are
	
@Sprint2 @US171 @TC2159 
Scenario: Manually update Qty - Highlight

	And I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad 
	And I tap Add on the keypad

    When I tap on the qty field for an item cell in the order
    Then the keypad appears 
    And the qty field is selected for edit

@Sprint2 @US171 @TC2160 @Sprint3 @US172 @TC2190
Scenario: Manually Update Qty - Qty successfully updated - Case count updated

	And I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad 
	And I tap Add on the keypad

    When I tap on the qty field for an item cell in the order
    Then the keypad appears 
    
	When I tap 5 as qty on the keypad 
    And I tap Done on the keypad
    Then the qty entered is updated to 5 for that item
    
    And Case Count should be updated to 5

@Sprint2 @US171 @TC2161 @Sprint3 @US172 @TC2191
Scenario: Manually Update Qty - Update to Zero - Case Count removed 

	And I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad 
	And I tap Add on the keypad 
	
    When I tap on the qty field for an item cell in the order
    Then the keypad appears 
    
  	When I tap 0 as qty on the keypad
    And I tap Done on the keypad 
   	Then the item is removed from the order

	And Case Count should be removed
	
@Sprint3 @US172 @TC2191	
Scenario: Manually Update Qty - Update to Zero - Case Count decreasing 

	#Adding an item
	And I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad 
	And I tap Add on the keypad 
	
	#Adding a new item
	And I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad 
	And I tap Add on the keypad 	
	
    When I tap on the qty field for an item cell in the order
    Then the keypad appears 
    
  	When I tap 0 as qty on the keypad
    And I tap Done on the keypad 
   	Then the item is removed from the order

	And Case Count should be updated to 1





@Sprint2 @US171 @TC2166
Scenario: Manually Update Qty - Delete qty 

	And I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad 
	And I tap Add on the keypad
	
    When I tap on the qty field for an item cell in the order
    Then the keypad appears 
    
    When I tap Done on the keypad 
    Then I should see the item remains the same qty as before

    
    



