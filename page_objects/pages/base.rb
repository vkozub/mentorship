class Base < SitePrism::Page
  include NativeHelpers

  # ELEMENTS
  section :footer_section, Footer, '#footer-container'
end

