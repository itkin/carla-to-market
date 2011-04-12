class FinancialDataController < ApplicationController

  active_scaffold :financial_data do |config|
    config.columns = [:entity, :year, :turnover, :profit]
  end
end
