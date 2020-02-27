Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :events
  resources  :profile
  get 'pages/discover'
  root to: 'pages#index'
  get "/:page" => "static#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end