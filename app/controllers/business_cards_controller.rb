class BusinessCardsController < ApplicationController
  before_action :set_card, only: [:show]
  
  def new
    @card = BusinessCard.new
  end

  def index
     @cards = BusinessCard.all
  end

  def show
     @card = BusinessCard.find(params[:id])
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
      @card = BusinessCard.find(params[:id])
      @card.destroy
      redirect_to business_card_path
  end

  private

  def set_card
    @card = BusinessCard.find(params[:id])
  end

  def card_params
    params.require(:business_card).permit(:user_id, :card_id)
  end
end
