class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.text :text
      t.integer :user_id
      t.integer :answerable_id
      t.string :answerable_type
      t.timestamps
    end
    add_index :answers, :answerable_id
  end

  def self.down
    drop_table :answers
  end
end
