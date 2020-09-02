Rails.application.routes.draw do
  
  # get 'collected_cards/index'
  # get 'collected_cards/show'
  # get 'collected_cards/new'
  # get 'collected_cards/create'
  # get 'cards/new'
  # post 'cards/create'
  
  devise_for :users
  root to: 'pages#home'

  resources :business_cards do 
    resources :collected_card, only: [:new, :create, :index]
  end

  resources :notifications, only: [:destroy]
  

  resources :collected_cards, only: [:show, :index, :destroy, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :business_cards, only: [:destroy]
end
