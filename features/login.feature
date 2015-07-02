# This feature is to check the Login
@Login  
Feature: Login

As a user of the Retailer app
I want to see a login page for the application
so I am able to login to the application


	Background:
		Given Im on the login view 
	
		
   #@Sprint2 @US148 @TC17 
   Scenario:  Login - Check Elements
   
   		
		Then I should see the following elements:
		|password_field|
		|username_field|
		|terms_conditions|
		|login_button|
		
    @Sprint2 @US57 @TC22 @TC2114 
	Scenario: Login - Login into app with valid credentials
		
		
		When I tap on email field 
		And I enter valid email value
		
		And I tap on password field
		And I enter valid password value
		And I tap Done in the keypad
		
		And I tap on the login button
		Then I should see the Orders view 
 	
 	@Sprint2 @US148 @TC2110
	Scenario: Login - Unauthorized email
	
		When I tap on email field 
		And I enter unauthorized email value
		
		And I tap on password field
		And I enter valid password value
		And I tap Done in the keypad	
		
		And I tap on the login button
		Then I should see an Error Message 
		And I should see the legend "The username/password entered is not recognized.  Please check your credentials and try again." 
		
		When I tap OK
		Then I should be on the login view
		  
	
	@Sprint2 @US148 @TC2112
	Scenario: Login - invalid password
	
		When I tap on email field 
		And I enter valid email value
		
		And I tap on password field
		And I enter invalid password value
		And I tap Done in the keypad	
		
		And I tap on the login button
		Then I should see an Error Message 
		And I should see the legend "The username/password entered is not recognized.  Please check your credentials and try again." 
		
		When I tap OK
		Then I should be on the login view 
							
	@Sprint2 @US148  @TC20
	Scenario: Login - Navigate to Terms of Use
	
		When Ive clicked on the terms of use link
		Then I am navigated to the blank terms of use view
		
	
	@Sprint2 @US148  @TC21
	Scenario: Login - Button disabled
	
		When I havent entered text from either field
		Then login button is disabled 
		
	@Sprint2 @US148 @TC2109	
	Scenario: Login - Progress Indicator

		When I tap on email field
		And I enter valid email value
		
		When I tap on password field
		And I enter valid password value
		And I tap Done in the keypad
		
		And I tap on the login button
		Then I see a progress indicator until I get a response
		
		
	
		
		
	
	
	
    	
    	
    	
    	
    	
 
    


	

	 