class AttachmentsController < ApplicationController

  active_scaffold :attachments do |config|
    config.subform.columns.exclude :comment
    config.columns.exclude :created_at, :attachable
  end

  def conditions_for_collection
    { :attachable_id => nil}
  end

end
