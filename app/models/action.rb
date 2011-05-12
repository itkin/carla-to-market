class Action < ActiveRecord::Base

  has_and_belongs_to_many :users
  has_and_belongs_to_many :entities
  has_and_belongs_to_many :contacts

  has_many :answers, :as => :answerable

  def self.on_going
    where(:date >= Date.today)
  end

  default_scope :order => 'actions.created_at asc'
end
