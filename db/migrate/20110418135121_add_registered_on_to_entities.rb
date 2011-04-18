class AddRegisteredOnToEntities < ActiveRecord::Migration
  def self.up
    add_column :entities, :registered_on, :date, :default => nil
  end

  def self.down
  end
end
