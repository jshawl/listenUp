class AudiobooksController < ApplicationController

	def index
		@audiobooks = Audiobook.all
	end

	def create
		@audiobook = Audiobook.find(params[:id])
	end

	def show
		@audiobook = Audiobook.find(params[:id])
	end

end

private
	def audiobook_params
		params.require(:narrator).permit(:name, :gender, :accent, :voices)
	end
end