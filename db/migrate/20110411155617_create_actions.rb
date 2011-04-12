class CreateActions < ActiveRecord::Migration
  def self.up
    create_table :actions do |t|
      t.date :date
      t.string :title
      t.text :comment
      t.timestamps
    end
  end

  def self.down
    drop_table :actions
  end
end
