class AnswersController < ApplicationController

  active_scaffold :answers do |config|
    config.columns =[:user, :text]
    config.columns[:user].form_ui = :select
  end
end
