class School < ActiveRecord::Base
	has_many :professors
	has_many :users
end
