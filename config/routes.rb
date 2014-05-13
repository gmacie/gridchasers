Rails.application.routes.draw do
  resources :expeditions

  root :to => "expeditions#index"
end
