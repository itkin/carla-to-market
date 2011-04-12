class ContactsController < ApplicationController

  active_scaffold :contacts do |config|
    record_select :per_page => 20, :search_on => [:first_name, :last_name], :order_by => 'last_name'

    config.columns << [:full_name]
    config.list.columns = [:entities, :full_name, :phone, :comment, :actions]
    config.create.columns= config.update.columns= [:entities, :civility, :first_name, :last_name, :phone, :comment]
    config.show.columns = [:entities, :full_name, :phone, :comment, :actions]
    config.columns[:civility].form_ui = :select
    config.columns[:entities].form_ui = :record_select
    columns[:full_name].set_link(:show)

  end

end
