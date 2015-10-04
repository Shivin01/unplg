class EpisodsController < ApplicationController

	before_action :find_podcast
	before_action :find_episod, only: [:show]
	
  	def new
		@episod = @podcast.episod.new
	end

	def create
		@episod = @podcast.episods.new episod_params
		if @episod.save
			redirect_to podcast_episod_path(@podcast, @episod)
		else
			render 'new'
		end
	end

	def show
		@episods = Episod.where(podcast_id: @podcast).order("created_at DESC").reject {|e| e.id == @episod.id}
	end

	private

	def episod_params
		params.require("episod").permit(:title, :description)
	end

	def find_podcast
		@podcast = Podcast.find(params[:podcast_id])
	end

	def find_episod
		@episod = Episod.find(params[:id])
	end
end
