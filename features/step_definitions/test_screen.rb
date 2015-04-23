##############################    BackGround   ###########################

Given /the welcome screen/ do

	hi = "Hi, I am running Smart Office App"
	puts hi	
	
end



##############################   Actions    ############################# 

When /I tap on (Employee|Guest) button/ do |type_login| 

	if type_login == "Employee"
    	find_element(:name, "I am an Employee").click()
    	puts " I tapped on Employee button"
	else
		find_element(:name, "I am a Guest").click()
    	puts " I tapped on Guest button"
    end
		
end



When /I enter my credentials/ do

	username_field = find_element(:name, "Email").send_keys "cgimenez@solstice-consulting.com" 
	password_field = find_element(:name, "Passwd").send_keys "xxxxxxx"
 	
 	puts "Keys Entered"
 
end


When /I click on "Sign in" button/ do

	find_element(:name, "signIn").click()
	puts "Signed in"
	
	
end

When /I enter guest credentials/ do

	#guest_mail = find_element(:value, "Email").send_keys "busyoscar123@gmail.com"

	puts available_contexts 


	guest_email=  textfield "Email"
	puts " #{guest_email}, #{guest_email.size}, #{guest_email.location} "
	guest_email.send_keys "busyoscar123@gmail.com"

	guest_pin = find "PIN"
	puts "#{guest_pin}, #{guest_pin.size} , #{guest_pin.location}"
	guest_pin.send_keys "8889" 

end


When /I tap on "Login" button/ do
	
	find_element(:name, "Login").click	

end


When /I tap on "No, Thanks" button/ do

	find_element(:name, "No Thanks").click
	
end


When /I dismiss the alert/ do

	alert_dismiss
	
end


#############################    Results   ############################

Then /I should see (Employee|Guest) button/ do |type_login|

	if type_login == "Employee"
		empl_button = find_element(:name, "I am an Employee")
    	puts "Object: #{empl_button}"  #using strings interpolation
		puts "Size: #{empl_button.size}"
    	puts "Name: #{empl_button.name}"
	else
		guest_button = find_element(:name, "I am a Guest")
    	puts "Button is: #{guest_button}"
    	puts "Size: #{guest_button.size}"
    	puts "Name: #{guest_button.name}"
    	
    end
	
end



Then /I should be redirected to Google login/ do

  	puts "Log IN screen"
    button = find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAButton[1]")
    puts "Back Button is Here #{button}"

    puts "The current context is: #{current_context}"
    puts "Available contexts are: #{available_contexts}"
    
	set_context "WEBVIEW_1"
	puts "I am changing the context to: #{current_context}"

	view = find_element(:name, "Email")
    puts "Google login was found: #{view}"

end



Then /I accept term conditions/ do

	puts "Changing webview context"
	sleep 20  #cambiar esto por algo decente
	puts "Available contexts: #{available_contexts}"
	meet_el = find_element(:id, "submit_approve_access").click()
	puts meet_el

end


Then /I should see an Alert/ do

	puts "Switching to default context"
	switch_to_default_context
	sleep 20  #cambiar esto por algo decente
	
		
end	


Then /I should be able to discard it/ do

	alert_dismiss

end


Then /I should be able to see the SmartOffice panel for (Employees|Guests)/ do |type_login|

	if type_login == "Employees"
		btn_meet = find_elements(:name, "Meet")
		if btn_meet 
			puts btn_meet
			puts "Congrats!! your login was succesfull"
		end
	else 
		btn_logistics = find_element(:name, "Logistics")
		if btn_logistics
			puts btn_logistics
			puts "Congrats! Your login was succesfull"
		end
	end
end


Then /I should see guest credentials screen/ do

	find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAScrollView[1]")
	find_element(:name, "Login")

end



Then /I should see the screen for Linkedin/ do
	find_element(:name, "Login into LinkedIn") 
	find_element(:name, "Login")
	find_element(:name, "No Thanks")
end
    	


