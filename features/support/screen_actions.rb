class ScreenActions

  def cancel_button
    find_element(:name, "Cancel")
  end

  def delete_button
    find_element(:xpath, "//UIAButton[@name='Delete']")
  end

  def scroll_until text
    until find_element(:name,"#{text}").displayed? do
      execute_script('mobile: scroll', direction: 'down')
    end
  end

  # explicit wait
  def wait_for(timeout = 10, &block)
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    wait.until{yield}
  end

  # switch to different views
  def switch_to_context context
    # binding.pry
    wait_for{available_contexts.include?("#{context}")}
    set_context context
  end

  #  Uncommend this code if want to use singleton class

  # Wikipedia.register_page_object(self)
  #
  # def self.inherited(klass)
  #   Wikipedia.register_page_object(klass)
  # end

end