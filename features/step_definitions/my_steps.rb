Given(/^I am not logged in user$/) do
  @login_page = Login.new
  @login_page.load
end

When(/^I click Login in button$/) do
  footer = @login_page.footer_section
  expect(@login_page).to have_login_button
  expect(footer).to have_notice_link
  expect(footer).to have_footer_copyrights
  expect(footer).to have_test_video_link
  expect(footer).to have_cookie_link
  expect(footer).to have_privacy_policy_link
  expect(footer).to have_terms_conditions_link
  expect(footer).to have_increase_contrast_link

	@login_page.fill_in_input('username_field', "#{USERNAME1}")
  @login_page.fill_in_input('password_field', "#{PASSWORD1}")
  @login_page.login_button.click
end

Then(/^Dashboard page is opened$/) do
  expect(page).to have_content 'Medical Info'
end

Then(/^I visit personal details page$/) do
  @dashboard = Dashboard.new
  @dashboard.main_navigation.personal_details.click
  expect(page).to have_content 'Personal Details'
end

Given(/^there is an open group for TDH brand$/) do
  generate_open_group
end

And(/^there is a (active|pending|cancelled|suspended) user for this group$/) do |status|
  generate_member(status)
end

Given(/^I am using member app$/) do
  @login_page = Login.new
  @login_page.load
end

And(/^I sign in with valid credentials$/) do
  username_field = @login_page.username_field
  password_field = @login_page.password_field
  fill_in_input(username_field, "#{@member['user_nm']}")
  fill_in_input(password_field, "#{@member['password']}")
  @login_page.login_button.click
end

Then(/^I am on TDH core (dashboard)(?: and verifies )?(main_navigation|left_rail_column|main_content_column)?$/) do |page, place|
  @dashboard = Dashboard.new
  main_navigation = @dashboard.main_navigation
  string = load_expected_string(page, place)
  verify_text_on_the_page(main_navigation, string)
end
