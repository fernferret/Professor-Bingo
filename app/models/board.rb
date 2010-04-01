class Board < ActiveRecord::Base
	belongs_to :user
	belongs_to :professor
	has_and_belongs_to_many :phrases
end
