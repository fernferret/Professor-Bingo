class Professor < ActiveRecord::Base
	has_many :phrases
	has_many :boards
end
