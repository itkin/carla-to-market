class Address < ActiveRecord::Base

  belongs_to :addressable, :polymorphic => true

  def to_label
    [:street, :zip_code, :city].map{|attr| send(attr) }.join(' ')
  end
end
