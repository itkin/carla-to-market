class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.string :fix
      t.string :fax
      t.string :cell
      t.string :phonable_type
      t.integer :phonable_id
      t.timestamps
    end
    add_index :phones, :phonable_id
  end

  def self.down
    drop_table :phones
  end
end
