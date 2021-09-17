module NativeHelpers
	def fill_in_input(page, locator_method, content)
		page.public_send(:"#{locator_method}").set(content, clear: :backspace)
	end
end
