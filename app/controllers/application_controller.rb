class ApplicationController < ActionController::Base
  protect_from_forgery

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

  def options_for_association_conditions(association)
#    if ['actions'].include?(association.name)
#      nil #['false']
#    else
#      super
#    end
  end
end
