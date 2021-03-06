class CollectedCardsController < ApplicationController
  before_action :set_qr_data, only: :create
  before_action :destroy_notification, only: :show

  def index
     if params[:query].present?
       sql_query = "name @@ :query OR firstname @@ :query OR lastname @@ :query OR jobtitle @@ :query OR city @@ :query"
       @cards = CollectedCard.joins(:business_card).where(sql_query, query: "%#{params[:query]}%")
     else
       #@cards = CollectedCard.all
       @cards = CollectedCard.order(created_at: :desc).where(user_id: current_user.id) #show the last cards first, and show only the cards of current user
      
     end
  end

  def show
    @collectedcard = CollectedCard.find(params[:id])
    
  end

  def new
    @collected_card = CollectedCard.new
  end

  def create
    qr_code = QrCode.create(data: @qr_data)
    # begin
    #   @business_card = BusinessCard.find(qr_code[:data].split("/").last)      #Error handling if input is not readable or cannot be found
    # rescue ActiveRecord::RecordNotFound => e
    #   raise
    #   puts "Error Message: #{e}"
    #   @error_message = e
    # end
    # @collected_card[:user_id] = @business_card[:user_id]
    # @collected_card[:business_card_id] = @business_card[:id]
    
    @business_card = BusinessCard.find_by(id: qr_code[:data].split("/").last)
    if @business_card
      @collected_card = CollectedCard.new(user_id: current_user.id, business_card_id: @business_card[:id])
      @collected_card.save
      #binding.pry
      @new_notification = Notification.new(collected_card_id: @collected_card.id, user_id: current_user.id)    #add new notifications to notifications table 
      @new_notification.save!
      #binding.pry
      redirect_to collected_cards_path(@collected_card), notice: 'Business Card was successfully created.'
    else
      redirect_to controller: 'thing', action: 'thing', id: @collected_card.id, error_notice: 'This is a test message'
    end
  end

  def destroy
    @collectedcard = CollectedCard.find(params[:id])
    @collectedcard.destroy
    redirect_to collected_cards_path
  end

  private

  def set_qr_data
    qr_code_params = JSON.parse(params[:qr_code_json_data]).with_indifferent_access

    @qr_data = qr_code_params[:qr_data]
  end

  def set_card
    @collected_card = CollectedCard.find(params[:id])
  end

  def card_params
    #params.require(:@collected_card).permit(:user_id, :business_card_id)
  end

  def destroy_notification
    @notification_card = Notification.find_by(collected_card_id: params[:id])
    @notification_card.destroy unless @notification_card.nil?
  end
end
