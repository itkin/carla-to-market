class CreateActionsUsers < ActiveRecord::Migration
  def self.up
    create_table :actions_users, :id => false do |t|
      t.integer :action_id
      t.integer :user_id
    end
    add_index :actions_users, [:user_id, :action_id]
  end

  def self.down
    drop_table :actions_users
  end
end
