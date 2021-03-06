class EpisodsController < ApplicationController

	before_action :authenticate_podcast!, except: [:show]
	before_filter :require_permission 
	before_action :find_podcast
	before_action :find_episod, only: [:show, :edit, :update, :destroy]
	
  	def new
		@episod = @podcast.episod.new
	end

	def create
		@episod = @podcast.episod.new episod_params
		if @episod.save
			redirect_to podcast_episod_path(@podcast, @episod)
		else
			render 'new'
		end
	end

	def show
		@episods = Episod.where(podcast_id: @podcast).order("created_at DESC").reject {|e| e.id == @episod.id}
	end

	def edit
	end

	def update
		if @episod.update episod_params
			redirect_to podcast_episod_path(@podcast, @episod), notice: "Episode  Was Succfully Updated!"
		else
			render 'edit'
		end
	end

	def destroy

		@episod.destroy
		redirect_to root_path
	end

	private

	def episod_params
		params.require("episod").permit(:title, :description, :episod_thumbnail, :mp3, :mp3_file_name)
	end

	def find_podcast
		@podcast = Podcast.find(params[:podcast_id])
	end

	def find_episod
		@episod = Episod.find(params[:id])
	end

	def require_permission
		@podcast = Podcast.find(params[:podcast_id])
		#if current_podcast != @podcast
		#	redirect_to root_path, notice: "Sorry, you're not allowed to view that page"
		#end
	end
end
