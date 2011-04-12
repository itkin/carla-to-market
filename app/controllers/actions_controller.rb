class ActionsController < ApplicationController

  active_scaffold :actions do |config|

    config.list.columns = [:date, :users, :title, :entities, :contacts, :comment, :answers]
    config.update.columns = config.create.columns = [:date, :users, :title, :entities, :contacts, :comment]
    config.columns[:users].form_ui = :record_select
    config.columns[:entities].form_ui = :record_select
    config.columns[:contacts].form_ui = :record_select
  end

end
