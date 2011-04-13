class TagsController < ApplicationController

  active_scaffold :tags do |config|
    config.columns = [:label, :comment]
  end
end
