Rails.application.routes.draw do
  resources :pets, only: [:index, :show, :new, :create]
  resources :owners, only: [:index, :show]
end