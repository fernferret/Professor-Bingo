class Professor < ActiveRecord::Base
	belongs_to :school
	has_many :phrases
	has_many :boards
	belongs_to :user
end
