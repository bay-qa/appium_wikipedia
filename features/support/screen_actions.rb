class ScreenActions

  def cancel_button
    find_element(:name, "Cancel")
  end

  def delete_button
    find_element(:xpath, "//UIAButton[@name='Delete']")
  end






#
#   Wikipedia.register_page_object(self)
#
#   def self.inherited(klass)
#     Wikipedia.register_page_object(klass)
#   end
#
end