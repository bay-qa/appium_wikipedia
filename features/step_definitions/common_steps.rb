When(/^I tap on skip button$/) do
  find_element(:name, "Skip").click
end

Then(/^I land on Home screen$/) do
  result = find_element(:name, "Home").attribute("value")
  expect(result).to be == 1
end

And(/^I tap on Search button$/) do
  find_element(:name, "Search").click
end

Then(/^I land on Search screen$/) do
  # result = find_element(:name, "Search").attribute("value")
  # expect(result).to be == 1
  expect(find_element(:class_name, "UIASearchBar").text).to eq "Search Wikipedia"
end


And(/^I type "([^"]*)"$/) do |search_term|
  find_element(:class_name, "UIASearchBar").clear
  find_element(:class_name, "UIASearchBar").send_keys search_term
end


Then(/^I see that 1st search result include "([^"]*)"$/) do |expected_result|
  element = find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIACollectionView[1]/UIACollectionCell[1]/UIAStaticText[1]")
  expect(element.text.downcase).to include expected_result
end


When(/^I tap on (\d+)(?:st|nd|rd|th)? result$/) do |cell|
  find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIACollectionView[1]/UIACollectionCell[#{cell}]/UIAStaticText[1]").click
end


And(/^I verify that article title include "([^"]*)"$/) do |expected_result|
  element = find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIAStaticText[1]")
  expect(element.text.downcase).to include expected_result
end