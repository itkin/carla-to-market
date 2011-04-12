class FinancialDataController < ApplicationController

  active_scaffold :financial_data do |config|
    config.columns = [:entity, :year, :turnover, :ebe, :profit, :nb_employees]
    config.columns[:profit].options[:format] = :percentage
    config.columns[:turnover].options[:format] = config.columns[:ebe].options[:format] = :currency
  end
end
