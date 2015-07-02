@Submit_s2 

Feature: Submit

As a user of the Connect Order iPhone app
I want to be able to submit my order to KeHE so that it can be processed and delivered to me

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
	And I tap into Enter UPC at the top of the view
	And I tap 14 digits on the keypad
	And I tap Add on the keypad
	Then item should be added to the list
		
		
			
@Sprint2 @US19 @TC2103 @TC2104		
Scenario:  Submit order to services - Loading indicator

	Given that I have internet connectivity 
	When I tap on Submit button
	Then I should see the loading indicator 
    And I should be able to see the Confirmation Page
     
     
     
@Sprint2_offline @US19 @TC2102 @TC2153 
Scenario: Submit order - Offline popup message

 	Given that I do NOT have internet connectivity
    When I tap the Submit button
   	Then I see a popup alert with the title "Oops! Something went wrong." 
   	And the message "Your order is always saved. Please try submitting again shortly." 
    
    When I tap OK button
	Then I should back to the login screen
     
     
     