class TrendingController < ApplicationController

	def index
		response = Trending.new.daily_trending
		daily_trending = JSON.parse(response.body)
		@daily_trending = Kaminari.paginate_array(daily_trending).page(params[:page]).per(10)
	end
end