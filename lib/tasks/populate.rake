namespace :db do
	desc "Add Some Professors to the db"
	task :populate => :environment do
		School.populate 5 do |school|
			school.name = Populator.words(1..3).titleize
			Professor.populate 2..20 do |prof|
				prof.school_id = school.id
				prof.name = Faker::Name.name
				prof.user_id = 1
			end
		end
	end
end