Rails.application.routes.draw do
  devise_for :users
  get 'restaurants/index'
  root "restaurants#index"
  resources :restaurants 
  resources :sakes
  resources :sake_restaurants do
    member do
      get 'add'
      post 'add_create'
    end
  end
end
