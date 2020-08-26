class CollectedCardsController < ApplicationController
  def index
    @collectedcards = CollectedCard.all
  end

  def show
  end

  def new
  end

  def create
  end
end
