module FinancialDataHelper

  def profit_column(record)
    number_to_percentage record.profit, :precision => 2
  end

  def turnover_column(record)
    number_to_currency record.turnover, :precision => 0, :unit => "&euro;"
  end

end
