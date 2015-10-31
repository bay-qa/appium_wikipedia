class SearchScreen < ScreenActions

  def search_button
    find_element(:name, "Search")
  end

  def search_field
    find_element(:class_name, "UIASearchBar")
  end

  def delete_all_searches_alert
    find_element(:xpath, "//UIAAlert[@name='Delete all recent searches?']")
  end

  def delete_all_button
    find_element(:name, "Delete All")
  end

  def recent_searches
    find_element(:class_name, "UIATableView").find_elements(:class_name, "UIATableCell")
  end

end