class HomeScreen < ScreenAction

  def home_button
    find_element(:name, "Home")
  end

  def home_button_value
    home_button.attribute("value")
  end
  end

  def settings_button
    find-element(:name, "settings_button")
  end