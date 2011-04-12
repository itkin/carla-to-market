class CreateActionsContacts < ActiveRecord::Migration
  def self.up
    create_table :actions_contacts, :id => false do |t|
      t.integer :action_id
      t.integer :contact_id
    end
    add_index :actions_contacts, [:contact_id, :action_id]

  end

  def self.down
    drop_table :actions_contacts
  end
end
