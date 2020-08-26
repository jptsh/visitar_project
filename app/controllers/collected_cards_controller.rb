class CollectedCardsController < ApplicationController
  def index
    @collectedcards = CollectedCard.all
  end

  def show
    @collectedcard = CollectedCard.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end
end
