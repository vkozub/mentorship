class Footer < SitePrism::Section

  element :notice_link, '.notice-top-link'
  element :footer_copyrights, '.footer--copyrights'
  element :test_video_link, '.column.medium-4.footer--utility-links > div > ul > li:first-child > a'
  element :cookie_link, '.column.medium-4.footer--utility-links > div > ul > li:nth-child(2) > a'
  element :privacy_policy_link, '.column.medium-4.footer--utility-links > div > ul > li:nth-child(3) > a'
  element :terms_conditions_link, '.column.medium-4.footer--utility-links > div > ul > li:nth-child(4) > a'
  element :increase_contrast_link, '.column.medium-4.footer--utility-links > div > ul > li:last-child > a'
end

