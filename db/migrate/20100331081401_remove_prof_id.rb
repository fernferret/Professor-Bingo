class RemoveProfId < ActiveRecord::Migration
  def self.up
	remove_column :phrases, :professor_id
  end

  def self.down
    add_column :phrases, :professor_id, :integer
  end
end
