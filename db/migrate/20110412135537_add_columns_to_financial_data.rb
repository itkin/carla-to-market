class AddColumnsToFinancialData < ActiveRecord::Migration
  def self.up
    add_column :financial_data, :ebe, :integer
    add_column :financial_data, :nb_employees, :integer
  end

  def self.down
  end
end
