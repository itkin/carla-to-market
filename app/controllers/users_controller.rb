class UsersController < ApplicationController

  active_scaffold :users do |config|
    config.list.columns = config.show.columns = [:email]
    config.create.columns = config.update.columns = [:email, :password]
    record_select :per_page => 3, :search_on => [:email], :order_by => 'email'
  end
end
