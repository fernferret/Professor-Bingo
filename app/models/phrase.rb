class Phrase < ActiveRecord::Base
	belongs_to :professor
	has_and_belongs_to_many :boards
end
