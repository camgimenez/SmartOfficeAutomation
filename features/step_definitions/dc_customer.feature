@DC-Customer 
Feature: Select DC-Customer

As an Order app user
I want to be able to create an order for a customer number
so I can get stock delivered to the correct store

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
	 

@Sprint3 @US153 @TC2172 
Scenario: DC-Customer Screen 

	Then I should see the Select DC-Customer screen 
	And I should see the following elements in the DCCustomer screen: 
	|dc-customer-1|
	|dc-customer-1+n| 

@Sprint3 @US153 @TC2177
Scenario: Navigate back from DC-Customer screen 

	Then I should see the Select DC-Customer screen 
	When I tap on back button 
	Then I should see the Orders view 

@Sprint3  @US153 @TC2180 @TC2184 
Scenario: User select DC-Customer 
 
	Then I should see the Select DC-Customer screen 
	When I tap on any DC-Customer 
	Then I should see the Item Search Page 
	When I tap on back button 
	Then I should see the Orders view
	
@Sprint3 @US208 @TC2174 @TC2175
Scenario: By-pass DC-Customer from Draft and Submitted Orders View
	
	Then I should see the Orders view
	Then I should see the Item Search Page 
	
	When I tap on back button 
	And I tap on the Submitted tab
	And I tap on the plus button
	
	Then I should see the Item Search Page

	