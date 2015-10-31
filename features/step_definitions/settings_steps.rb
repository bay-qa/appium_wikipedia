When(/^I press on Settings button$/) do
  home_screen.settings_button.click
end

Then(/^I land on Settings screen$/) do
  settings_screen.settings_header
end

When(/^I press on Send usage reports toggle$/) do
  settings_screen.send_usage_reports_toggle.click
end

Then(/^Send usage reports toggle should be turned (off|on)$/) do |state|
  if state == "off"
    expect(settings_screen.send_usage_reports_toggle.attribute(:value)).to be == 0
  else
    expect(settings_screen.send_usage_reports_toggle.attribute(:value)).to be == 1
  end
end

And(/^I tap on Privacy policy$/) do
  settings_screen.privacy_policy_link.click
end