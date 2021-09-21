module NativeHelpers
	# def fill_in_input(locator_method, content)
	# 	self.public_send(:"#{locator_method}").set(content, clear: :backspace)
	# end

	def fill_in_input(object, content)
		object.set(content, clear: :backspace)
	end

	def verify_text_on_the_page(object, string)
		object_text = object.text.split("\n")
		expect(object_text).to have_content string
	end

	def load_expected_string(file_name, object_content)
		file_path = File.expand_path("../../../strings/member/#{file_name}.yaml", __FILE__)
		doc = YAML.safe_load(ERB.new(File.read(file_path)).result)
		doc[object_content]
	end
end

World(NativeHelpers)