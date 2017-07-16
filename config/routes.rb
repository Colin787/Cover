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

  resources :jobs do ##not to sure bout this one
                     ##thought it was polymorphic
    resources :comments
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end

