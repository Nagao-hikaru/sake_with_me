Rails.application.routes.draw do
  devise_for :users
  get 'restaurants/index'
  root "restaurants#index"
  resources :restaurants  do
    collection do
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
end
