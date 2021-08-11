Given(/^I am not logged in user$/) do
  @login_page = Login.new
  @login_page.load
end

When(/^I click Login in button$/) do
  expect(@login_page).to have_login_button
  expect(@login_page).to have_notice_link
  expect(@login_page).to have_footer_copyrights
  expect(@login_page).to have_test_video_link
  expect(@login_page).to have_cookie_link
  expect(@login_page).to have_privacy_policy_link
  expect(@login_page).to have_terms_conditions_link
  expect(@login_page).to have_increase_contrast_link
  # expect(@login_page.footer_section).to have_test_video_link
  # puts @login_page.footer_section.privacy_policy_link.text
  # text = @login_page.footer_section.privacy_policy_link.text
  # expect(text).to eq('Web and Mobile Privacy Policy')
  @login_page.username_field.set USERNAME1
  @login_page.password_field.set PASSWORD1
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

