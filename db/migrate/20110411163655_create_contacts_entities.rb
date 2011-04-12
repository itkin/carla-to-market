class CreateContactsEntities < ActiveRecord::Migration
  def self.up
    create_table :contacts_entities, :id => false do |t|
      t.integer :contact_id
      t.integer :entity_id
    end
    add_index :contacts_entities, [:entity_id, :contact_id]
  end

  def self.down
    drop_table :contacts_entities
  end
end
