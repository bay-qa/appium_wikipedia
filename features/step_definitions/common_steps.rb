When(/^I tap on skip button$/) do
  find_element(:name, "Skip").click
end

Then(/^I land to Home screen$/) do
  expect(find_element(:name, "Home").attribute("value")).to eq 1
end

Then(/^I tap on Search button$/) do
  # find_element(:name, "Search").click
  button_exact("Search").click
end

Then(/^I land on Search screen$/) do
  expect(find_element(:class_name, "UIASearchBar").text).to eq "Search Wikipedia"
end

Then(/^I type "([^"]*)"$/) do |search_term|
  find_element(:class_name, "UIASearchBar").clear
  find_element(:class_name, "UIASearchBar").send_keys search_term
end

Then(/^I see that first search result include "([^"]*)" search criteria$/) do |expected_result|
  actual_result = find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIACollectionView[1]/UIACollectionCell[1]/UIAStaticText[1]").text.downcase
  expect(actual_result).to include(expected_result)
end

When(/^I tap on (\d+)st result$/) do |cell|
  find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIACollectionView[1]/UIACollectionCell['#{cell}']").click
end

When(/^I verify that article title include "([^"]*)"$/) do |expected_result|
  actual_result = find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIAStaticText[1]").text.downcase
  expect(actual_result).to include(expected_result)
end
