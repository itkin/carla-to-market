class UsersController < ApplicationController

  active_scaffold :users do |config|
    config.columns = [:email]
    record_select :per_page => 3, :search_on => [:email], :order_by => 'email'
  end
end
