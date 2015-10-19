class LaunchScreen < ScreenActions

  def skip_button
    find_element(:name, "Skip")
  end

  def login_button
    find_element(:name, "login")
  end
end