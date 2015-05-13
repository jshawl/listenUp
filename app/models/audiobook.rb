class Audiobook < ActiveRecord::Base
	belongs_to :narrators

	validates :title, {presence: true}
	
	def index
	end

end
