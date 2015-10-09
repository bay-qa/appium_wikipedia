class SearchScreen < ScreenActions
  def search_button
    find_element(:name, "Search")
  end

  def search_field
    find_element(:class_name, "UIASearchBar")
  end

end