class BusinessCardsController < ApplicationController
  before_action :set_card, :set_vcard, only: [:show, :destroy]
  
  def new
    @card = BusinessCard.new
  end

  def index
     @cards = BusinessCard.all
  end

  def show
    @vcard = VCardigan.create(:version => '4.0')
    @vcard = VCardigan.create
    @vcard.name 'Strummer', 'Joe'
    @vcard.fullname 'Joe Strummer'
    @vcard.photo 'http://strummer.com/joe.jpg', :type => 'uri'
    @vcard.email 'joe@strummer.com', :type => ['work', 'internet'], :preferred => 1
    @vcard[:item1].url 'http://strummer.com'
    @vcard[:item1].label 'Other'
     @card = BusinessCard.find(params[:id])
     @enc_uri = URI.escape("#{@vcard.to_s}")
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

  def set_vcard
    
  end

  def card_params
    params.require(:business_card).permit(:user_id, :card_id)
  end
end
