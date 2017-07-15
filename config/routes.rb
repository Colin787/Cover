Rails.application.routes.draw do

  get 'home/index'

  root to: 'home#index'
  
  resources :users, except: [:index]
  resources :usertypes, only: [:new, :create, :destroy, :update]

  shallow do
    resources :jobs do
      resources :applications
      resources :comments
    end
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'
end

