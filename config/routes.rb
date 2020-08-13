Rails.application.routes.draw do
  get 'restaurants/index'
  root "restaurants#index"
end
