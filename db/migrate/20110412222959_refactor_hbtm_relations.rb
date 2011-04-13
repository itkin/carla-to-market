class RefactorHbtmRelations < ActiveRecord::Migration
  def self.up

# Finalement je laisse la relation habtm entre contacts et entités

#    add_column :contacts, :entity_id, :integer
#    add_index :contacts, :entity_id

#    connection.execute <<-END
#      update contacts
#      left join contacts_entities J on contacts.id= J.contact_id
#      set contacts.entity_id = J.entity_id
#      where J.entity_id IS NOT NULL
#    END

    connection.execute <<-END
      update financial_data F1
      left join financial_data F2 on F1.entity_id= F2.entity_id
      set F1.entity_id = NULL
      where F1.id <> F2.id and F1.year < F2.year
    END

    connection.execute <<-END
      delete from financial_data
      where financial_data.entity_id = NULL
    END

#    drop_table :contacts_entities

  end

  def self.down
  end
end
