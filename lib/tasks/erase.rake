namespace :db do
	desc "Erase all data except logins"
	task :erase => :environment do
		[Board, Phrase, Professor, School].each(&:delete_all)
	end
end