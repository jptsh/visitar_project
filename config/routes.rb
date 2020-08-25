Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :cards do 
    resources :collected_card, only: [:create]
  end

  resources :collected_cards, only: [:show, :index, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
