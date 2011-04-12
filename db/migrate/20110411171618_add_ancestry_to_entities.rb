class AddAncestryToEntities < ActiveRecord::Migration
  def self.up
    add_column :entities, :ancestry, :string
    add_column :entities, :ancestry_depth, :integer, :default => 0
  end

  def self.down
    remove_column :entities, :ancestry_depth
    remove_column :entities, :ancestry
  end
end
