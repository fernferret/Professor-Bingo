class RemoveIdFromHabtm < ActiveRecord::Migration
  def self.up
	remove_column :boards_phrases, :id
  end

  def self.down
	add_column :boards_phrases, :id, :integer, {:options => "auto_increment = 1"}
  end
end
