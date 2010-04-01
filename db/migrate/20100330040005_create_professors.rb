class CreateProfessors < ActiveRecord::Migration
  def self.up
    create_table :professors do |t|
      t.integer :prof_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :professors
  end
end
