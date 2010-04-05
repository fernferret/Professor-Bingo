class AddSchoolId < ActiveRecord::Migration
  def self.up
		add_column :professors, :school_id, :integer
  end

  def self.down
		remove_column :professors, :school_id
  end
end
