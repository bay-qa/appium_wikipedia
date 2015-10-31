class SettingsScreen < ScreenActions

  def settings_header
    find_element(:name, "Settings")
  end

  def send_usage_reports_toggle
    find_element(:name, "send_usage_report")
  end

  def privacy_policy_link
    find_element(:name, "Privacy policy")
  end

  def privacy_page_header
    find_element(:id, "section_0").text
  end

end