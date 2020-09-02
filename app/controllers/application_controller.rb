class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_notifications
  

  def after_sign_in_path_for(user)
    business_cards_path
  end

  def after_sign_up_path_for(user)
    business_cards_path
  end

  private 

  def set_notifications
    #@notifications = current_user.notifications
  end
end
