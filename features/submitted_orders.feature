
@SubmittedOrders @US123 @US119 @US163 @US202
Feature: SubmittedOrders


As a user of the Connect Retailer app
After clicking through the Login screen 
I want to see a placeholder "Orders" 
And be able to create submitted orders

	Background: 
	
		#check functions usage: Given that Ive successfully logged in to the App an am on the dashboard
		Given Im on the login view
		When I tap on email field 
		And I enter valid email value
		
		And I tap on password field
		And I enter valid password value
		And I tap Done in the keypad
		
		And I tap on the login button
		Then I should see the Orders view 
 	

   @Sprint1
   Scenario: Manage Orders - PlaceHolder View
   
		Then all I see is the the word Orders and a plus button
		
		Given that Im on the dashboard
		When I tap on the plus button 
		Then I m taken from the dashboard to a placeholder Item Search page
		
		Given the Item Search Page
		When I tap on back button
		Then I m taken to dashboard again
		
		Given that Im on the dashboard
		When I tap on the plus button
		Then I m taken again to Search page
		
	
	@Sprint2 @TC2017
	Scenario: Submitted Orders - No order
	
		When I tap on the Submitted tab	
		Then I should see Submitted Orders view
		And I should see the legend "You do not have any submitted orders."
	
	@Sprint2 @TC2018 @TC2020 @TC2019
	Scenario: Submitted Orders - Chronologically and Scrolling
	
		#submit 1	
		When I tap on the plus button
		And I tap into Enter UPC at the top of the view
		And I tap 4 digits on the keypad
		And I tap Add on the keypad
		And I tap on Submit button
		#Then I should see the Loading view
		And I should be able to see the Confirmation Page
		And I should be able to Return to Dashboard
		
		When I tap on the Submitted tab
		Then Submitted Order View should have 1 submitted order
		
		#submit 2
		When I tap on the plus button
		And I tap into Enter UPC at the top of the view
		And I tap 4 digits on the keypad
		And I tap Add on the keypad
		And I tap on Submit button		
		#Then I should see the Loading view
		And I should be able to see the Confirmation Page
		And I should be able to Return to Dashboard
		
		When I tap on the Submitted tab
		Then Submitted Order View should have 2 submitted order
		
		#submit 2		
		When I tap on the plus button
		And I tap into Enter UPC at the top of the view
		And I tap 4 digits on the keypad
		And I tap Add on the keypad
		And I tap on Submit button		
		#Then I should see the Loading view
		And I should be able to see the Confirmation Page
		And I should be able to Return to Dashboard
		
		When I tap on the Submitted tab
		Then Submitted Order View should have 3 submitted order
		
		#submit 3 	
		When I tap on the plus button
		And I tap into Enter UPC at the top of the view
		And I tap 4 digits on the keypad
		And I tap Add on the keypad
		And I tap on Submit button		
		#Then I should see the Loading view
		And I should be able to see the Confirmation Page
		And I should be able to Return to Dashboard
		
		When I tap on the Submitted tab
		Then Submitted Order View should have 4 submitted order
		
		#And I should see them chronologically in the list
		#And see the headers : Day, Month, Year and confirmation#
		#And also I have to be able to scroll down
		#And scroll up
		
	@Sprint2 @TC2023	
	Scenario: Submitted Orders - Going through tabs 
		
		Then I should see two tabs: Draft and Submitted
		When I tap on the Submitted tab
		Then I should see Submitted Orders view
		
		When I tap on the Draft tab
		Then I should see Draft Orders view
		
		
		
				

		
		
		
	
	
	
		
		
