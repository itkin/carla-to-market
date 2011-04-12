class CreateFinancialData < ActiveRecord::Migration
  def self.up
    create_table :financial_data do |t|
      t.integer :entity_id
      t.integer :year
      t.integer :turnover
      t.float :profit

      t.timestamps
    end
  end

  def self.down
    drop_table :financial_data
  end
end
