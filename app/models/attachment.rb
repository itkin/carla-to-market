class Attachment < ActiveRecord::Base

  has_attached_file :binary
  belongs_to :attachable, :polymorphic => true

  validates_attachment_presence :binary

end
