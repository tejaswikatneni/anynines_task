class TrendingController < ApplicationController

	def index
		response = Trending.new.daily_trending
		@response = JSON.parse(response.body)
	end
end