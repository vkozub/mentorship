module NativeHelpers
	def fill_in_input(page, locator_method, content)
		page.send(:"#{locator_method}").set(content, clear: :backspace)
	end
end

