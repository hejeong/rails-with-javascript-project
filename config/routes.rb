Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "events#index"
  resources :events, only: [:create, :index, :show, :destroy]
  resources :users, only: [:new, :create, :index]
  get '/login', to: 'sessions#new'
  post '/login/authenticate', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
