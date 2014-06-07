class Expedition < ActiveRecord::Base
	validates :grid, presence: true
	validates :grid, length: { minimum: 4 }
end
