class CreateActionsEntities < ActiveRecord::Migration
  def self.up
    create_table :actions_entities, :id => false do |t|
      t.integer :action_id
      t.integer :entity_id
    end
    add_index :actions_entities, [:entity_id, :action_id]
  end

  def self.down
    drop_table :actions_entities
  end
end
