Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  ActiveAdmin.routes(self)
  resources :users, only: [:index, :show]
  resources :events
  get 'pages/about' => 'pages#about', as: :about
  get 'pages/secret' => 'pages#secret', as: :secret
  root to: 'pages#index'
end
