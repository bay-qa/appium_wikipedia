class LoginScreen < ScreenActions

  def login_header
    find_element(:name, "Log in")
  end

  def user_name_field
    find_element(:name, "user_name_field")
  end

  def password_field
    find_element(:name, "password_field")
  end

  def done_button
    find_element(:name, "Done")
  end

  def invalid_password_msg
    find_element(:name, "The password you provided is incorrect.")
  end

  def invalid_username_msg
    find_element(:name, "The user name you provided doesn't exist.")
  end








end











