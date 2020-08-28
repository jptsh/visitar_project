class BusinessCardsController < ApplicationController
  before_action :set_card, :set_vcard, only: [:show, :destroy]

  def new
    @card = BusinessCard.new
  end

  def index
    @cards = BusinessCard.all
  end

  def show
     @enc_uri = URI.escape("#{@vcard.to_s}") #encoded uri of vcard for qr api
     @card = BusinessCard.find(params[:id])
     @enc_uri = URI.escape("#{@vcard.to_s}")
  end

  def create
    # @user = User.find(params[:user_id])
    @card = BusinessCard.new(card_params)
    @card.user = current_user

    if @card.save!
      redirect_to business_cards_path(@card)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @card = BusinessCard.find(params[:id])
  end

  def update
    @card = BusinessCard.find(params[:id])
    @card.update!(card_params)
    redirect_to business_card_path(@card)
  end

  def destroy
      @card = BusinessCard.find(params[:id])
    if @card.destroy!
      redirect_to business_cards_path
    else
      render :show
    end
  end

  private

  def set_vcard #please edit here the bc_card credentials for qr_code generator in show
    @vcard = VCardigan.create(:version => '4.0')
    @vcard = VCardigan.create
    @vcard.name @card.lastname, @card.firstname
    @vcard.fullname "#{@card.firstname} #{@card.lastname}"
    @vcard.phone "#{@card.phone}"
    @vcard.photo 'http://strummer.com/joe.jpg', :type => 'uri'
    @vcard.email "#{@card.firstname}@example.com", :type => ['work', 'internet'], :preferred => 1
    @vcard[:item1].url "#{@card.website}"
    @vcard[:item1].label 'Other'
  end

  def set_card
    @card = BusinessCard.find(params[:id])
  end

  def card_params
    params.require(:business_card).permit(:firstname, :lastname, :jobtitle, :company, :phone, :email, :website, :name)
  end
end
