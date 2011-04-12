class AddRegistrationNumberToEntities < ActiveRecord::Migration
  def self.up
    add_column :entities, :registration_number, :string
  end

  def self.down
    remove_column :entities, :registration_number
  end
end
