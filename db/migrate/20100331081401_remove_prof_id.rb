class RemoveProfId < ActiveRecord::Migration
  def self.up
	remove_column :phrases, :prof_id
  end

  def self.down
    add_column :phrases, :prof_id, :integer
  end
end
