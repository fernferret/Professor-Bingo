class AddProfToPhrase < ActiveRecord::Migration
  def self.up
	add_column :phrases, :professor_id, :integer
  end

  def self.down
	remove_column :phrases, :professor_id
  end
end
