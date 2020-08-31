Rails.application.routes.draw do

  devise_for :users
  get 'restaurants/index'
  root "restaurants#index"
  resources :restaurants  do
    post 'like' => 'likes#create'
    delete '/like' => 'likes#destroy'
    member do
      get 'google'
    end
  end
  resources :sakes
  resources :sake_restaurants do
    member do
      get 'add'
      post 'add_create'
    end
  end
  resources :users, only: [:show]
end
