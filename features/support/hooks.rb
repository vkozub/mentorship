After do |scenario|
	if scenario.failed?
		file_path = 'report/cucumber-reports/html'
		# file_path = File.join(Dir.getwd, "/screenshots")
		# Dir.mkdir file_path unless Dir.exists? file_path
		page.driver.browser.save_screenshot("#{file_path}/#{scenario.__id__}.png")
		embed("#{file_path}/#{scenario.__id__}.png", "image/png", "SCREENSHOT")
	end
end
