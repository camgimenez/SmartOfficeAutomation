#######################    BackGround   ###########################


Given /Im on the login view/ do

	find_element(:xpath, "//UIAApplication[1]")
	#checkin an least one element of the page
	find_element(:name, "Log In")

end



########################   Actions    ############################# 

When /I tap on email field/ do

	first_textfield.click()

	puts textfields	
	#find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATextField[1]/UIATextField[1]").click()

end 

When /I enter valid email value/ do
	#find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATextField[1]/UIATextField[1]").send_keys "joe@sunshine.com" 
	first_textfield.send_keys "joe@sunshine.com"
end
		
When /I tap on password field/ do

	for txtfield in textfields
		puts txtfield.value
		
		if txtfield.value == "Password" 
			txtfield.click()
			pass_field = txtfield
		end
	end
	#find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIASecureTextField[1]/UIASecureTextField[1]]").click()
end

When /I enter valid password value/ do
	#find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIASecureTextField[1]/UIASecureTextField[1]]").send_keys "password"
	for txtfield in textfields
		puts txtfield.value
		
		if txtfield.value == "Password" 
			txtfield.send_keys "password"
		end
	end
end
		

When /I tap on the login button/ do
	
	find_element(:name, "Log In").click()
end


When /Ive clicked on the terms of use link/ do
	find_element(:name, "Terms of Use").click()
end

When /^I havent entered text from either field$/ do
	first_textfield.send_keys ""
end

When(/^I enter unauthorized email value$/) do
   first_textfield.send_keys "test@unreal.com"
end


When(/^I tap Done in the keypad$/) do
	find_element(:name, "Done")
  	find_element(:xpath, "//UIAApplication[1]/UIAWindow[2]/UIAKeyboard[1]/UIAButton[4]").click()
  	
end

When(/^I tap OK$/) do
   alert_accept
end


When(/^I enter invalid password value$/) do

  	for txtfield in textfields
		puts txtfield.value
		
		if txtfield.value == "Password" 
			txtfield.send_keys "fakepassword"
		end
	end
  
end



########################  Results #################################

Then /I should see the following elements/ do
	pending
end


Then /I should see the Orders view/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]")
end

Then /I am navigated to the blank terms of use view/ do
	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAStaticText[1]")
	find_element(:name, "Terms of Use")
end

Then /login button is disabled/ do
	if find_ele_by_attr('UIAButton', 'enabled', 'false').name == 'Log In' 
		puts 'Yes, Login is disabled'
	end	
end 

Then(/^I should see an Error Message$/) do
  find_element(:xpath, "//UIAApplication[1]/UIAWindow[4]/UIAAlert[1]") 
end

Then(/^I should see the legend "(.*?)"$/) do |arg1|
  #ele = find_element(:xpath, "//UIAApplication[1]/UIAWindow[4]/UIAAlert[1]/UIAScrollView[1]/UIAStaticText[2]")
  #if ele.name == arg1
  #		puts "Yes, the legend is there"
  #end
  find_ele_by_attr('UIAStaticText', 'value', arg1) 
end



Then(/^I should be on the login view$/) do
	assert(find_element(:xpath, "//UIAApplication[1]"), "Login Placeholder not found")
	assert(find_element(:name, "Log In"), "Login button not found")
end


Then(/^I see a progress indicator until I get a response$/) do
  find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAActivityIndicator[1]") 
  find_element(:name, "In progress")
end








