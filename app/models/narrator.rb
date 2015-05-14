class Narrator < ActiveRecord::Base
	has_many :audiobooks
	validates :name, :accent, :gender,:presence => true
	
end
