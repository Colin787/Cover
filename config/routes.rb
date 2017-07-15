Rails.application.routes.draw do

  get 'home/index'

  root to: 'home#index'

  resources :users, except: [:index]

  shallow do
    resources :jobs do
      resources :applications
      resources :comments
    end
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end