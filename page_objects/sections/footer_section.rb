class Footer
  include SitePrism

  SitePrism::Page.element :notice_link, '.notice-top-link'
  SitePrism::Page.element :footer_copyrights, '.footer--copyrights'
  SitePrism::Page.element :test_video_link, '.column.medium-4.footer--utility-links > div > ul > li:first-child > a'
  SitePrism::Page.element :cookie_link, '.column.medium-4.footer--utility-links > div > ul > li:nth-child(2) > a'
  SitePrism::Page.element :privacy_policy_link, '.column.medium-4.footer--utility-links > div > ul > li:nth-child(3) > a'
  SitePrism::Page.element :terms_conditions_link, '.column.medium-4.footer--utility-links > div > ul > li:nth-child(4) > a'
  SitePrism::Page.element :increase_contrast_link, '.column.medium-4.footer--utility-links > div > ul > li:last-child > a'
end
