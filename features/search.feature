@Search @US120 
Feature: Search

As a user on the search page
I want to see a search box at the top of the page where I can enter a number which represents a UPC
so I can see that number returned in the search results area

Background:
	
		#ver como englobar esto
		Given Im on the login view
		When I tap on email field 
		And I enter valid email value
		
		And I tap on password field
		And I enter valid password value
		And I tap Done in the keypad
		
		And I tap on the login button
		Then I should see the Orders view 
		When I tap on the plus button
		Then I should see the Item Search Page
		
		When I tap into Enter UPC at the top of the view
		
		
@Sprint1 @TC2 @US120 
Scenario: Search Results

	Given the Item Search Page
	Then the words -Search by UPC #- appear in the search box at the top of the page
	#And focus is in the search box by default
	And the keypad (defaulted to display numbers and not text) displays at the bottom of the page.

	When I enter 12345 as value
	Then result should be 12345
	And Add button should appears
	And Clear button should be able to delete the search value
	
	When I enter 10000000000000 as value
	Then result should be 10000000000000
	And Add button should appears
	And Clear button should be able to delete the search value
	
	When I enter @#$%$%$ as value
	Then result should be letters
	And Add button should appears
	And Clear button should be able to delete the search value
	
	When I tap on Done button
	Then Keypad should disappear
	
	When I tap into Search field again 
	Then Keypad should appear
	
	When I enter 120987767 as value
	And I tap on Done button
	Then Keypad should disappear
	
	
	
@Sprint2 @TC202 @US167
Scenario: Search UPC - more than 14 digits

	And I tap 15 digits on the keypad
	Then those >14 digits do not appear
	And are not read in as part of the UPC


@Sprint2 @TC2022 @US167
Scenario: Search UPC - Delete digits after 14 entered


	And I tap 14 digits on the keypad
	And I tap Delete on the keypad
	Then what I entered is deleted one at a time per delete being tapped


@Sprint2 @TC2022 @US167
Scenario: Search UPC -	Delete digits before 14 entered

	And I tap 4 digits on the keypad
	And I tap Delete on the keypad
	Then what I entered is deleted one at a time per delete being tapped

@Sprint2 @TC29 @US167
Scenario: Search UPC - View Header: Enter/Add UPC in order with quantity = 1+n

	And I tap 01234 on the keypad 
	And I tap Add on the keypad
	Then item should be added to the list
	And quantity for the row of numbers is 1 

	When I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad 
	And I tap Add on the keypad 	
	Then quantity for the row of numbers is updated to 2

	When I tap into Enter UPC at the top of the view
	And I tap 01234 on the keypad 
	And I tap Add on the keypad	
	Then quantity for the row of numbers is updated to 3




	
	

