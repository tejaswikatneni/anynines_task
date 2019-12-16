class Trending
	def get_endpoint(action)
		api = "https://github-trending-api.now.sh/developers?language=ruby&since=#{action}"
	end

	def daily_trending
		@endpoint = get_endpoint("daily")
		request_api
	end

	def request_api
		RestClient.get @endpoint, {content_type: :json, accept: :json, :timeout => -1, :open_timeout => -1}
	end
end