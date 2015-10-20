Given(/^I press on Login button$/) do
  launch_screen.login_button.click
end

Then(/^I land on Login page$/) do
  login_screen.login_header
end


And(/^I type "([^"]*)" to user name text field$/) do |user_name|
  login_screen.user_name_field.send_keys user_name
end


Then(/^I type "([^"]*)" to password text field$/) do |password|
  login_screen.password_field.send_keys password
end


When(/^I press on done button$/) do
  login_screen.done_button.click
end

Then(/^I should see Invalid password error message$/) do
  login_screen.invalid_password_msg
end


Then(/^I should see Invalid username error message$/) do
  login_screen.invalid_username_msg
end