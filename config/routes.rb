Rails.application.routes.draw do

  get 'home/index'

  root to: 'home#index'

  get '/users/:id/experiences/new' => 'experiences#new'
  get '/users/restaurant' => 'users#restaurant'
  get '/users/worker' => 'users#worker'


  resources :users, except: [:index] do
    resources :experiences, only: [:index, :new, :create]
  end

  resources :usertypes, only: [:new, :create, :destroy, :update]

  shallow do
    resources :jobs do
      resources :applications
      resources :comments
      resources :reviews
    end
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'


  #custom get  user/new/restaurant routes to user/restaurant
end

