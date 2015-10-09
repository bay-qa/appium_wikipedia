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