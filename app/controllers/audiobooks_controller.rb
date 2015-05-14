class AudiobooksController < ApplicationController
	
	def index
		@audiobooks = Audiobook.all

		respond_to do |format|
			format.html { render :index }
			format.json { render json: @audiobook}
		end
	end

	def create
		@narrators = Narrator.all

		@audiobook = Audiobook.new(title: params[:title], author: params[:author], category: params[:category], narrator_id: params[:narrator_id])
		@audiobook.save
		render :index

	end

	def edit
	end

	def update
	end

	def show
		@audiobook = Audiobook.find(params[:id])
	end

end
