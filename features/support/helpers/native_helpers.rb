module NativeHelpers
	def fill_in_input(locator_method, content)
		self.public_send(:"#{locator_method}").set(content, clear: :backspace)
	end

	def verify_text_on_the_page(object)
		expect(object).to have_content 'My Account'
	end
end
