class HomeScreen < ScreenActions
  def home_button
    find_element(:name, "Home")
  end

  def home_button_value
    home_button.attribute("value")
  end
end