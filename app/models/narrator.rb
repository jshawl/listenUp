class Narrator < ActiveRecord::Base
	has_many :audiobooks

	validates :name, {presence: true}
end
