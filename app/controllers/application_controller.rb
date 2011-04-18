class ApplicationController < ActionController::Base
#  protect_from_forgery

  before_filter :authenticate_user!

  layout :choose_layout

  def choose_layout
    if request.xhr?
      false
    elsif devise_controller?
      'authenticate'
    else
      'application'
    end
  end

end
