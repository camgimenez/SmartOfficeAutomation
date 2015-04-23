# This feature is to check the login as an Employee
@Login
Feature: Login

	As a Smart Office user 
	I should be able to login in the app
	and see different panels depending on the type of user that is logged

	Scenario: Employee Login
		Given the welcome screen
    	Then I should see Employee button
    	
    	When I tap on Employee button
    	Then I should be redirected to Google login
   
    	When I enter my credentials
    	And I click on "Sign in" button
    	And I accept term conditions
    	Then I should see an Alert 
    	And I should be able to discard it
    	Then I should be able to see the SmartOffice panel for Employees


	Scenario: Guest Login
		Given the welcome screen
    	Then I should see Guest button
    	
    	When I tap on Guest button
    	Then I should see guest credentials screen
    	
    	When I enter guest credentials
    	And  I tap on "Login" button
    	Then I should see the screen for Linkedin
    	
    	When I tap on "No, Thanks" button
    	And I dismiss the alert
    	Then I should be able to see the SmartOffice panel for Guests
    	
    	
    	
    	
    	
 
    


	

	 