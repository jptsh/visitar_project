Rails.application.routes.draw do
  
  # get 'cards/new'
  # get 'cards/create'
  devise_for :users
  root to: 'pages#home'

  resources :business_cards do 
    resources :collected_card, only: [:new, :create]
  end

  resources :collected_cards, only: [:show, :index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
