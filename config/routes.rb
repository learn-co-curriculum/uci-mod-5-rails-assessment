Rails.application.routes.draw do
  resources :pets, only: [:index]
  resources :owners, only: [:index]
end