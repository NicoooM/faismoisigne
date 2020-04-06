Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, only: [:index, :show]
  resources :events
  get 'pages/about' => 'pages#about', as: :about
  get 'pages/secret' => 'pages#secret', as: :secret
  get 'pages/onlineevent' => 'pages#onlineevent', as: :onlineevent
  root to: 'pages#index'
end
