class AddUserToProfOnAdd < ActiveRecord::Migration
  def self.up
	add_column :professors, :user_id, :integer
  end

  def self.down
	remove_column :professors, :user_id
  end
end
