class NarratorsController < ApplicationController

	def index
		if params[:narrator]
			@narrators = Narrator.where(narrator_params)
		else
			@narrators = Narrator.all
		end
	end

	def create
		@audiobook = Narrator.find(params[:id])
			# if admin, save
			# else, create, but do not save and wait for admin to approve
	end

	def show
		@audiobook = Narrator.find(params[:id])
	end

private
	def narrator_params
		params.require(:narrator).permit(:name, :gender, :accent, :voices)
	end
end