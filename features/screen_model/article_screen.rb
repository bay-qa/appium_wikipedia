class ArticleScren < ScreenActions

  def article_title
    find_element(:xpat, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIAStaticText[1]")
  end
end