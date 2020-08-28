class CollectedCardsController < ApplicationController
  def index
    if params[:query].present?
      # @cards = BusinessCard.where("firstname ILIKE ?", params[:query])
      sql_query = "firstname @@ :query OR lastname @@ :query OR jobtitle @@ :query OR city @@ :query OR postalcode @@ :query"
      @cards = BusinessCard.where(sql_query, query: "%#{params[:query]}%")
    else
      @collectedcards = CollectedCard.all
    end
  end

  def show
    @collectedcard = CollectedCard.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
    @collectedcard = CollectedCard.find(params[:id])
    @collectedcard.destroy
    redirect_to collected_cards_path
  end
end
