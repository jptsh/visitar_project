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
    @notifications = current_user.present? ? Notification.where(user_id: current_user.id) : 0     #if a user is logged in create the object. otherwise 0
  end
end
