@BottomNavigation @US122 @US117 @US113
Feature: BottomNavigation

As a user on the search page,
in the footer of the page I would like to see menu words/icons
so I have context as to where I am and where I can navigate.



Scenario: BottomNavigation
	
	Given that Ive successfully logged in to the App and am on the dashboard
	When I tap on the plus button 
	
	
	Given the Item Search Page
	When I look at the bottom of the page
	Then I should see two menu options: Search and Review
	#test BOLD pending
		 
	When I tap onto the Review icon in the footer
	Then I leave the Search page and am navigated to the Review page
	
	Given Im a user who is already on the Review page
	When I tap onto the Search icon in the footer
	Then I leave the Review page and am navigated to the Search page
	
	
	#keypad pending 
	
