
# spec/support/response_helper.rb

module ResponseHelper
	def response_json
			JSON.parse(response.body) rescue {}
	end
end