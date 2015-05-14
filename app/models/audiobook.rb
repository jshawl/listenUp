class Audiobook < ActiveRecord::Base
	belongs_to :narrator, dependent: :destroy
	validates :title, :author, :category, :narrator_id,  :presence => true

end
