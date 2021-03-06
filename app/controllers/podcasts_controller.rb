class PodcastsController < ApplicationController

	before_action :find_podcast, only: [:show, :dashboard]
	before_action :find_episod, only: [:show, :dashboard]

	
	def index
		@podcasts = Podcast.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
	end

	def show
	end

	def dashboard
	end

	private

	def find_episod
			@episods = Episod.where(podcast_id: @podcast).order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
	end
		

	def find_podcast
		if params[:id].nil?
			@podcast = current_podcast
		else
			@podcast = Podcast.find(params[:id])
		end
	end
end
