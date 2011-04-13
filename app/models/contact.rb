class Contact < ActiveRecord::Base

  has_and_belongs_to_many :entities, :uniq => true
  has_and_belongs_to_many :actions
  has_one :phone, :as => :phonable
  belongs_to :civility

  delegate :name, :to => :civility, :allow_nil => true, :prefix => true

  accepts_nested_attributes_for :phone

  def full_name
    [:civility_name, :first_name, :last_name].map{|attr| send(attr)}.compact.join(' ')
  end

  def to_label
    full_name
  end
end
