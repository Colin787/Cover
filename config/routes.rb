Rails.application.routes.draw do

  root to: 'users#index'

  resources :users, only: [:new, :create]
  resources :jobs, only: [:new, :create, :show, :index]
  resources :comments, only: [:new, :create, :edit, :destroy]
  resources :applications ,only: [:new, :create, :show, :index, :destroy]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
