class NotificationsController < ApplicationController
    def destroy
      @notification_card = Notification.find(params[:id])
      if @notification_card.destroy!
        redirect_to collected_cards_path(params[:id])
      else
        render :show
      end
    end
end
