module Generators
	module Group
		def generate_group(type, options = {})
			med_history_agreements = ['STANDARD']
			create_group_api(:group, options.merge({type: type, agreements: med_history_agreements}))
			# create_group_api(:group, options)
		end

		def generate_open_group(options = {})
			generate_group(:open, options)
		end
	end
end

World(Generators::Group)