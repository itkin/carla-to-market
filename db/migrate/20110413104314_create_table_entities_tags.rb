class CreateTableEntitiesTags < ActiveRecord::Migration
  def self.up
    create_table :entities_tags, :id => false do |t|
      t.integer :entity_id
      t.integer :tag_id
    end
    add_index :entities_tags, :entity_id
    add_index :entities_tags, :tag_id
  end

  def self.down
    remove_index :entities_tags, :entity_id
    remove_index :entities_tags, :tag_id
    drop_table :entities_tags
  end
end
