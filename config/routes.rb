Rails.application.routes.draw do
  get 'users/show'
  resources :events
  resources :users
  devise_for :users
  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
