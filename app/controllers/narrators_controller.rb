class NarratorsController < ApplicationController

	def index		
		if params[:narrator]
			@narrators = Narrator.where(narrator_params)
		else
			@narrators = Narrator.all
		end
		respond_to do |format|
			format.html { render :index }
			format.json { render json: @narrators}
		end
	end

	def create
		# make a new narrator using the information provided by the user
		@narrator = Narrator.new(name: params[:name], gender: params[:gender], accent: params[:accent], voices: params[:voices])
		@narrator.save
		@narrators = Narrator.all
		render :index
		# if @narrator.save
		# 	render :show
		# else
		# 	render :new
		# end
			# if admin, save
			# else, create, but do not save and wait for admin to approve
	end

	def show
		# show all the audiobooks associated with the narrator returned by the search
		@narrator = Narrator.find(params[:id])
		@audioboooks = @narrator.audiobooks
	end

private
	def narrator_params
		params.require(:narrator).permit(:name, :gender, :accent, :voices)
	end
end