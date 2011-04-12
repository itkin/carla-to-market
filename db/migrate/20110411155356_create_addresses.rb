class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :addressable_type
      t.integer :addressable_id
      t.text :street
      t.string :zip_code
      t.string :city
      t.timestamps
    end
    add_index :addresses, :addressable_id
  end

  def self.down
    drop_table :addresses
  end
end
