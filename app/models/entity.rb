class Entity < ActiveRecord::Base

  has_ancestry

  has_one :address, :as => :addressable, :dependent => :destroy
  has_one :phone, :as => :phonable, :dependent => :destroy

  has_and_belongs_to_many :contacts, :uniq => true
  has_and_belongs_to_many :actions
  has_and_belongs_to_many :tags, :uniq => true

  has_and_belongs_to_many :activity_sectors

  has_many :attachments, :as => :attachable

  has_one :financial_data, :class_name => 'FinancialData'

  accepts_nested_attributes_for :phone, :address

  delegate :profit, :turnover, :ebe, :nb_employees,  :to => :financial_data, :prefix => false, :allow_nil => true
  delegate :year, :to => :financial_data, :prefix => true, :allow_nil => true

  default_scope :order => "name asc"
end
