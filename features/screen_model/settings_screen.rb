class SettingsScreen < ScreenActions

  def settings_header
    find_element(:name, "Settings")
  end

  def send_usage_reports_toggle
    find_element(:name, "send_usage_report")
  end

end