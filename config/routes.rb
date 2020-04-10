Rails.application.routes.draw do
  root 'home#index'
  get 'home', to: 'home#index', as: 'vehicles'
  get 'show/:id', to: 'home#show', as: 'show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
