class CreateBoards < ActiveRecord::Migration
  def self.up
    create_table :boards do |t|
      t.integer :professor_id
      t.date :generated
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :boards
  end
end
