class CardsController < ApplicationController

  def new
    @card = Card.new
  end


  def create
    @user = User.find(params[:user_id])
    @card = Card.new(card_params)
    @card.user = current_user

    if @card.save
      redirect_to card_path(@card)
    else
      render :new
    end
  end

  def card_params
    params.require(:card).permit(:user_id, :card_id)
  end
end

end
