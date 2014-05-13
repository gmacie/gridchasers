Rails.application.routes.draw do
  resources :expeditions

  root :to => "visitors#index"
end
