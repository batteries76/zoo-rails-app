Rails.application.routes.draw do

  resources :animals
  resources :zoos
  devise_for :users
  root to: "zoos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
