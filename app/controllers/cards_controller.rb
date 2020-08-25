class CardsController < ApplicationController
    def index
      @cards = BusinessCard.all
    end

    def show
      @card = BusinessCard.find(params[:id])
    end
end
