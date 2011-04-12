class FinancialData < ActiveRecord::Base

  belongs_to :entity

  default_scope :order => "financial_data.year asc"

end
