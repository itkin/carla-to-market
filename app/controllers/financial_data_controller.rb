class FinancialDataController < ApplicationController

  active_scaffold :financial_data do |config|
    config.columns = [:entity, :year, :turnover, :ebe, :profit, :nb_employees]
    config.columns[:profit].options[:format] = :percentage
    config.columns[:year].options[:format] = config.columns[:turnover].options[:format] = config.columns[:year].options[:ebe] = :currency
  end
end
