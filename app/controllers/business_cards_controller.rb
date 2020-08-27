class BusinessCardsController < ApplicationController
  before_action :set_card, only: [:show, :destroy]
  
  def new
    @card = BusinessCard.new
  end

  def index
     @cards = BusinessCard.all
  end

  def show
     @card = BusinessCard.find(params[:id])
     @enc_uri = URI.escape("#{@card.name};#{@card.firstname};#{@card.lastname}")
     raise
  end
  
  def create
    # @user = User.find(params[:user_id])
    @card = BusinessCard.new(card_params)
    @card.user = current_user

    if @card.save
      redirect_to business_card_path(@card)
    else
      render :new
    end
  end

  def destroy
    if @card.destroy!
      redirect_to business_cards_path
    else
      render :show
    end
  end

  private

  def set_card
    @card = BusinessCard.find(params[:id])
  end

  def card_params
    params.require(:business_card).permit(:user_id, :card_id)
  end
end
