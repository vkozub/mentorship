require 'rest-client'

module Helpers
	module APIHelpers
		def create_group_api(model_name, attributes = {})
			response = RestClient.post("#{Configuration['tas']}/v1/cucumber/generator/#{model_name}", attributes)
			raise "Failure: Remote request for #{model_name}: #{attributes.inspect}" if response.code >= 400
			@group = JSON.parse(response.body)
			puts "The #{attributes[:type]} Group ID: #{@group['group_id']}, Group name: #{@group['group_nm']} created"
		end

		def create_member_api(model_name, attributes = {})
			response = RestClient.post("#{Configuration['tas']}/v1/cucumber/generator/#{model_name}", attributes)
			raise "Failure: Remote request for #{model_name}: #{attributes.inspect}" if response.code >= 400
			@member = JSON.parse(response.body)
			binding.pry
			puts "Member ID: #{@member['member_id']}, Username: #{@member['user_nm']} #{@member['first_nm']} #{@member['last_nm']} #{@member['dob']} #{@member['member_status_cd']}"
		end
	end
end

World(Helpers::APIHelpers)