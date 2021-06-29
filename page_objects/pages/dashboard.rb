class Dashboard < Footer::Page
  # ELEMENTS

  section :main_navigation, MainNavigation, '.top-bar'
  section :left_rail_column, LeftRailColumn, '.leftRailColumn'
  section :main_content_column, MainContentColumn, '.mainContentColumn'

  #   METHODS
end
