class PodcastsController < ApplicationController
	def index
		@podcasts = Podcast.all.order("created_at DESC")
	end

	def show
		@podcasts = Podcast.find(params[:id ])
	end
end
