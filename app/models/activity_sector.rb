class ActivitySector < ActiveRecord::Base

  has_and_belongs_to_many :entities

  default_scope :order => 'activity_sectors.position asc'

  validates_presence_of :name
end
