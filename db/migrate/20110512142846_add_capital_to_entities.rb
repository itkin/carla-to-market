class AddCapitalToEntities < ActiveRecord::Migration
  def self.up
    add_column :entities, :capital, :integer
  end

  def self.down
  end
end
