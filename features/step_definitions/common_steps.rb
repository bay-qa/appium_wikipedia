When(/^I tap on skip button$/) do
  launch_screen.skip_button.click
end

Then(/^I land on Home screen$/) do
  result = home_screen.home_button_value
  expect(result).to be == 1
end

And(/^I tap on Search button$/) do
  search_screen.search_button.click
end

Then(/^I land on Search screen$/) do
  # result = find_element(:name, "Search").attribute("value")
  # expect(result).to be == 1
  expect(search_screen.search_field.text).to eq "Search Wikipedia"
end


And(/^I type "([^"]*)"$/) do |search_term|
  search_screen.search_field.clear
  search_screen.search_field.send_keys search_term
end


Then(/^I see that 1st search result include "([^"]*)"$/) do |expected_result|
  actual_result = search_result_screen.first_search_result_text
  expect(actual_result.text.downcase).to include expected_result
end


When(/^I tap on (\d+)(?:st|nd|rd|th)? result$/) do |cell|
  search_result_screen.first_search_result_text(cell).click
end


And(/^I verify that article title include "([^"]*)"$/) do |expected_result|
  actual_result = article_screen.article_title
  expect(actual_result.text.downcase).to include expected_result
end


Then(/^I press on Cancel button$/) do
  screen_actions.cancel_button.click
end


When(/^I press on Delete button$/) do
  screen_actions.delete_button.click
end


Then(/^I scroll down until I "([^"]*)" is displayed$/) do |text|
  screen_actions.scroll_until text
end

Then(/^I land on Privacy policy web page$/) do
  # switch to Safari browser
  screen_actions.switch_to_context("WEBVIEW_1")
  expect(settings_screen.privacy_page_header).to be == "Privacy policy"
end