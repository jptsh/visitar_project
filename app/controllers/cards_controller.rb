class CardsController < ApplicationController
    def index
      @cards = BusinessCard.all
    end

    def show
    end
end
