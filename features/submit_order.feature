@Submit_s1 @US116 @US114 @US120
Feature: Submission

As a user who has added items to my order
I want to see and be able to tap on a Submit button
so I can submit an order for the items in my order

@Sprint1
Scenario: Submit Order

	Given that Ive successfully logged in to the App and am on the dashboard
	When I tap on the plus button 
	Then I should see the Item Search Page
	
	When I enter 12345 in the search field
	Then 12345 should be on the list
	And Add button should appears
	Then I tap on Add button 
	And tap on Clear button
	
	Then I enter 333 in the search field
	And I tap on Add button
	And tap on Clear button
	
	Then I enter 2222 in the search field
	And I tap on Add button
	And tap on Clear button
	
	
	Then I enter 333 in the search field
	And I tap on Add button
	And tap on Clear button
	
	
	When I tap on Done button
	Then I should see two menu options: Search and Review 
	
	When I tap onto the Review icon in the footer
	Then I leave the Search page and am navigated to the Review page
	
	And I expect to see items added on the list
	And item 333 should have 2 as qty
	And I should see a Submit button
	
	When I tap on Submit button
	Then I should able to see the Confirmation Page
	
	
@Sprint1	
Scenario: No Order to Submit

	Given that Ive successfully logged in to the App and am on the dashboard
	When I tap on the plus button 
	Then I should see the Item Search Page
	
	When I tap onto the Review icon in the footer
	Then I leave the Search page and am navigated to the Review page

	When I look below the area of the screen without item UPCs and quantities
	Then I expect to see helper text saying, Scan or add an item to review it here"
	And as the Submit button is disabled, I shouldnt be able to submit an order