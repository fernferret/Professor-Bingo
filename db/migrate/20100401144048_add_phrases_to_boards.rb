class AddPhrasesToBoards < ActiveRecord::Migration
  def self.up
	create_table :boards_phrases do |t|
		t.integer :board_id
		t.integer :phrase_id
	end
  end

  def self.down
	drop_table :boards_phrases
  end
end
