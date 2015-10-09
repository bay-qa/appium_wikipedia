class SearchResultScreen < ScreenActions
  def first_search_result_text(cell = 1)
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIACollectionView[1]/UIACollectionCell[#{cell}]/UIAStaticText[1]")
  end
end