require_all 'features/support/configuration.rb'

class Login < Footer::Page
  # ELEMENTS

  set_url "#{Configuration['member']}"

  element :username_field, '#login_username'
  element :password_field, '#login_password'
  element :login_button, "input[class^='button baseline blue']"
  element :get_started_button, "a[class='button baseline blue start_registration']"

  #   METHODS
end
