class CollectedCardsController < ApplicationController
  def index
     if params[:query].present?
      sql_query = "name @@ :query OR firstname @@ :query OR lastname @@ :query OR jobtitle @@ :query OR city @@ :query"
       @cards = CollectedCard.joins(:business_card).where(sql_query, query: "%#{params[:query]}%")
     else
       @cards = CollectedCard.all
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
