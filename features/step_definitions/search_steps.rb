Then(/^I should see 'Delete all searches' alert$/) do
  search_screen.delete_all_searches_alert
end

When(/^I press Delete All button on alert$/) do
  search_screen.delete_all_button.click
end


Then(/^I should see (\d+) results in recent searches$/) do |number|
  expect(search_screen.recent_searches.size).to be == number.to_i
end
