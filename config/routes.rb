Rails.application.routes.draw do
  # config/routes.rb
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'dashboard#index'

  resources :patients do
    resources :appointments, only: [:new, :create, :destroy]
  end

  get 'dashboard', to: 'dashboard#index'
end