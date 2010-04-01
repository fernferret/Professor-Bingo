class CreatePhrases < ActiveRecord::Migration
  def self.up
    create_table :phrases do |t|
      t.integer :phrase_id
      t.string :text

      t.timestamps
    end
  end

  def self.down
    drop_table :phrases
  end
end
