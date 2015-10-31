class Wikipedia

  def launch_screen
    @launch_screen ||= LaunchScreen.new
  end

  def home_screen
    @home_screen ||= HomeScreen.new
  end

  def search_screen
    @search_screen ||= SearchScreen.new
  end

  def search_result_screen
    @search_result_screen ||= SearchResultScreen.new
  end

  def article_screen
    @article_screen ||= ArticleScreen.new
  end

  def login_screen
    @login_screen ||= LoginScreen.new
  end

  def settings_screen
    @settings_screen ||= SettingsScreen.new
  end

  def screen_actions
    @screen_actions ||= ScreenActions.new
  end

  #  Uncommend this code if want to use singleton class

  # class << self
  #
  #   def register_page_object(klass)
  #     method_name = klass.name.scan(/[A-Z][a-z]+/).map(&:downcase).join('_').to_sym
  #     return if self.method_defined?(method_name)
  #
  #     define_method(method_name) do
  #       klass.new
  #     end
  #   end
  # end
end