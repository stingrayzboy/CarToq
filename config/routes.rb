Rails.application.routes.draw do
  root 'home#index'
  get 'home', to: 'home#index', as: 'vehicles'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
