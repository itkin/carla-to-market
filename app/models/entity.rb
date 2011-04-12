class Entity < ActiveRecord::Base

  has_ancestry

  has_one :address, :as => :addressable, :dependent => :destroy
  has_one :phone, :as => :phonable, :dependent => :destroy

  has_and_belongs_to_many :contacts
  has_and_belongs_to_many :actions

  has_many :financial_data, :class_name => 'FinancialData'

  accepts_nested_attributes_for :phone, :address


end
