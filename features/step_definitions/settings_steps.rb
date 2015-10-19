When(/^I press on Settings button$/) do
  home_screen.settings_button.click
end

Then(/^I land on Settings screen$/) do
  settings_screen.settings_header
end