class AddCommentToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :comment, :text
  end

  def self.down
    remove_column :contacts, :comment
  end
end
