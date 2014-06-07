Rails.application.routes.draw do
  
  root :to => "expeditions#index"

  resources :expeditions
  
  devise_for :users
  resources :users
  
end
