Rails.application.routes.draw do

  get 'home/index'

  root to: 'home#index'

  resources :users, only: [:new, :create, :show]
  resources :usertypes, only: [:new, :create, :destroy, :update]

  shallow do
    namespace :jobs do
      resources :comments, except: [:update]
      resources :jobapplications ,except: [:update]
    end
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'

end
