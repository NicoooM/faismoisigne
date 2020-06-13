Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  ActiveAdmin.routes(self)
  resources :users, only: [:index, :show]
  resources :events do
    collection do
      get 'categories/:category' => 'events#index', as: :category_of
    end
  end
  get 'pages/about' => 'pages#about', as: :about
  get 'pages/secret' => 'pages#secret', as: :secret
  get 'pages/onlineevent' => 'pages#onlineevent', as: :onlineevent
  get 'pages/supports' => 'pages#supports', as: :supports
  root to: 'pages#index'
end
