class CardsController < ApplicationController
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

  def card_params
    params.require(:business_card).permit(:user_id, :card_id)
  end
end
