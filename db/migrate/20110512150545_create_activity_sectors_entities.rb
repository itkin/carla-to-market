class CreateActivitySectorsEntities < ActiveRecord::Migration
  def self.up
    create_table :activity_sectors_entities, :id => false do |t|
      t.integer :activity_sector_id
      t.integer :entity_id
    end
  end

  def self.down
  end
end
