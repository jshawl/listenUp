class AudiobooksController < ApplicationController
	
	def index
		if params[:audiobook]
			@audiobook = Audiobook.where(audiobook)
		else
			@audiobook = Audiobook.all
		end

		respond_to do |format|
			format.html { render :index }
			format.json { render json: @audiobook}
		end
	end

	def create
		# I think this variable is not actually working because I wasn't able to use it to create a dropdown menu
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

private
	def audiobook_params
		params.require(:audiobook).permit(:title, :category, :author, :narrator_id)
	end

end
